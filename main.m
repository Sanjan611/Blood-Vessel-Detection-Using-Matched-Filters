% This script is the main script of the project. Running this will enable
% the demonstration of the research paper.

resolution = 15;
threshold = 20;

% STEP 1 : read in the image, convert it to grayscale if it is RGB, and
% smooth the image using a 5x5 mean filter (as per the research paper)
I = imread('Images/retina1.jpg');
I = rgb2gray(I);    
I = smoothImage(I);

% STEP 2 : Set up the kernel for zero degree orientation
k = makeKernel(0.5, 3);

% STEP 3 : Get the image after implementing the proposed algorithm
I_corr = getCorrForAllPixels(k, I, resolution, threshold);

% STEP 4 : To remove the noise in between the blood vessels,
% post-processing done with a median filter
I_bv = medfilt2(I_corr);

subplot(1, 2, 1), imshow(I), title('Original image');
subplot(1, 2, 2), imshow(I_bv), title('Blood Vessels highlighted');