#include "../include/OpenMPOld.h"

using std::cout;
using std::endl;
using std::max;
using std::min;
using std::abs;
using std::vector;

void OpenMPOld::findPeak(const vector<float>& image, float& maxVal, size_t& maxPos)
{
	maxVal = 0.0;
	maxPos = 0;
	const size_t SIZE = image.size();

    //#pragma omp parallel
    //{
        float threadAbsMaxVal = 0.0;
        size_t threadAbsMaxPos = 0;

        #pragma omp for schedule(static)
        for (auto i = 0; i < SIZE; ++i)
        {
            if (abs(image[i]) > abs(threadAbsMaxVal))
            {
                threadAbsMaxVal = image[i];
                threadAbsMaxPos = i;
            }
        }

        // Avoid using the double-checked locking optimization here unless
        // we can be certain that the load of a float is atomic
        #pragma omp critical
        if (abs(threadAbsMaxVal) > abs(maxVal)) 
        {
            maxVal = threadAbsMaxVal;
            maxPos = threadAbsMaxPos;
        }
		#pragma omp barrier
    //}
}

void OpenMPOld::subtractPSF(const size_t peakPos,
	const size_t psfPeakPos,
	const float absPeakVal)
{
	const int rx = idxToPos(peakPos, imageWidth).x;
	const int ry = idxToPos(peakPos, imageWidth).y;

	const int px = idxToPos(psfPeakPos, imageWidth).x;
	const int py = idxToPos(psfPeakPos, imageWidth).y;

	const int diffx = rx - px;
	const int diffy = ry - py;

	const int startx = max(0, rx - px);
	const int starty = max(0, ry - py);

	const int stopx = min(imageWidth - 1, rx + (imageWidth - px - 1));
	const int stopy = min(imageWidth - 1, ry + (imageWidth - py - 1));

    #pragma omp parallel for default(shared) schedule(static)
	for (int y = starty; y <= stopy; ++y)
	{
		for (int x = startx; x <= stopx; ++x)
		{
			residual[posToIdx(imageWidth, Position(x, y))] -= gGain * absPeakVal
				* psf[posToIdx(imageWidth, Position(x - diffx, y - diffy))];
		}
	}
}

OpenMPOld::Position OpenMPOld::idxToPos(const int idx, const size_t width)
{
	const int y = idx / width;
	const int x = idx % width;
	return Position(x, y);
}

size_t OpenMPOld::posToIdx(const size_t width, const OpenMPOld::Position& pos)
{
	return (pos.y * width) + pos.x;
}

void OpenMPOld::deconvolve()
{
    omp_set_num_threads(NTHREADS);
    cout << "Working with " << NTHREADS << " threads." << endl;
	residual = dirty;

	// Find the peak of the PSF
	float psfPeakVal = 0.0;
	size_t psfPeakPos = 0;
	findPeak(psf, psfPeakVal, psfPeakPos);

	cout << "PSF peak: " << psfPeakVal << ", at location: " << idxToPos(psfPeakPos, imageWidth).x
		<< ", " << idxToPos(psfPeakPos, imageWidth).y << endl;

	for (unsigned int i = 0; i < gNiters; ++i)
	{
		// Find the peak in the residual image
		float absPeakVal = 0.0;
		size_t absPeakPos = 0;
		findPeak(residual, absPeakVal, absPeakPos);

		if ((i + 1) % 100 == 0 || i == 0)
		{
			cout << "Iteration: " << i + 1 << " - Maximum = " << absPeakVal
				<< " at location " << idxToPos(absPeakPos, imageWidth).x << ","
				<< idxToPos(absPeakPos, imageWidth).y << ", index = " << absPeakPos << endl;
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
		subtractPSF(absPeakPos, psfPeakPos, absPeakVal);
	}
}
