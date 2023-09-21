#include "../include/GpuThrust.h"
#include <algorithm>
#include <iterator>

using std::cout;
using std::endl;
using std::max;
using std::min;
using std::abs;
using std::vector;


struct device_fabs
{
  __host__ __device__
  bool operator()(float lhs, float rhs)
  {
    return fabs(lhs) < fabs(rhs);
  }
};


struct device_subtractPSF
{
    const float a;

    device_subtractPSF(float _a) : a(_a){};

    __host__ __device__
        float operator()(const float& x, const float& y) const {
            return x-a*y;
        }
};

void GpuThrust::findPeak(
	thrust::device_vector<float> & image_D, 
	float& maxVal, 
	size_t& maxPos)
{
    auto result = thrust::max_element(thrust::device, image_D.begin(), image_D.end(), device_fabs());
    maxPos = thrust::distance(image_D.begin(), result);
    maxVal = *result;
}

void GpuThrust::subtractPSF(
	const size_t peakPos,
	const size_t psfPeakPos,
	const float absPeakVal) { LocalLog()<<"Not implemented, does nothing"<<endl;}

void GpuThrust::subtractPSF(
	thrust::device_vector<float> &residual_D, 
	thrust::device_vector<float> &psf_D,
	thrust::device_vector<size_t> &index1_D,
	thrust::device_vector<size_t> &index2_D,
	const size_t peakPos,
	const size_t psfPeakPos,
	const float absPeakVal)
{
    const int rx = peakPos % imageWidth;
    const int ry = peakPos / imageWidth;

    const int px = psfPeakPos % imageWidth;
    const int py = psfPeakPos / imageWidth;

	const int diffx = rx - px;
	const int diffy = ry - py;

	const int startx = max(0, diffx);
	const int starty = max(0, diffy);

	const int stopx = min(imageWidth - 1, rx + (imageWidth - px - 1));
	const int stopy = min(imageWidth - 1, ry + (imageWidth - py - 1));
	const int nindex = (stopx-startx)*(stopy-starty);
    const float a = -gGain*absPeakVal;

	//lets move the information to the device
	// #pragma omp parallel for collapse(2)
	size_t counter = 0;
	thrust::host_vector<size_t> index1(imageWidth*imageWidth), index2(imageWidth*imageWidth);
	for (int y = starty; y <= stopy; ++y)
	{
		for (int x = startx; x <= stopx; ++x)
		{

			index1[counter] = y*imageWidth +x;
			index2[counter] = (y-diffy) * imageWidth + (x - diffx);
			counter++;
		}
	}
	//worry about access beyond nindex, but give it a try
	thrust::copy(index1.begin(), index1.end(), index1_D.begin());
	thrust::copy(index2.begin(), index2.end(), index2_D.begin());
	auto first_residual = thrust::make_permutation_iterator(residual_D.begin(), index1_D.begin());
	auto last_residual = thrust::make_permutation_iterator(residual_D.end(), index1_D.end());
	auto first_psf = thrust::make_permutation_iterator(psf_D.begin(), index2_D.begin());
	thrust::transform(first_residual, last_residual, first_psf, first_residual, device_subtractPSF(gGain*absPeakVal));

	// for (int y = starty; y <= stopy; ++y)
	// {
	// 	for (int x = startx; x <= stopx; ++x)
	// 	{
    //         residual_D[y * imageWidth + x] -= gGain * absPeakVal
	// 			* psf_D[(y-diffy) * imageWidth + (x - diffx)];
	// 	}
	// }
}

void GpuThrust::deconvolve()
{
	residual = dirty;

	// Find the peak of the PSF
	float psfPeakVal = 0.0;
	size_t psfPeakPos = 0;
	auto timer = NewTimer();
	thrust::device_vector<float> psf_D = psf;
	thrust::device_vector<float> residual_D = dirty;
	thrust::device_vector<size_t> index1(dirty.size());
	thrust::device_vector<size_t> index2(dirty.size());
	LogTimeTakenOnDevice(timer);
	findPeak(psf_D, psfPeakVal, psfPeakPos);

    cout << "PSF peak: " << psfPeakVal << ", at location: " << psfPeakPos % imageWidth << ", " 
        << psfPeakPos / imageWidth << endl;

	for (unsigned int i = 0; i < gNiters; ++i)
	{
		// Find the peak in the residual image
		float absPeakVal = 0.0;
		size_t absPeakPos = 0;
		findPeak(residual_D, absPeakVal, absPeakPos);

		if ((i + 1) % 100 == 0 || i == 0)
		{
			cout << "Iteration: " << i + 1 << " - Maximum = " << absPeakVal
				<< " at location " << absPeakPos % imageWidth << ","
				<< absPeakPos / imageWidth << ", index = " << absPeakPos << endl;
		}

		// Check if the threshold is reached
		if (abs(absPeakVal) < gThreshold)
		{
			cout << "Reached stopping threshold" << endl;
			break;
		}

		// Add to model
		model[absPeakPos] += absPeakVal * gGain;

		// Subtract the PSF from the residual image 
		subtractPSF(residual_D, psf_D, index1, index2, absPeakPos, psfPeakPos, absPeakVal);
	}
	thrust::copy(residual_D.begin(), residual_D.end(), residual.begin());
}
