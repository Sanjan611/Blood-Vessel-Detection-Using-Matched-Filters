% This script is just to play around with the functions and see the changes
% in the output image with different filters and so on

% Should check this out: https://in.mathworks.com/matlabcentral/fileexchange/24990-retinal-blood-vessel-extraction

% Values that seem to work: sigma = 0.5, L = 3, threshold = 15
% BUT BIG QUESTION: How to choose these values?

I = imread('retina1.jpg');
I = rgb2gray(I);

k = makeKernel(2, 9);

n = 3;  % Number of subplots planned

I1 = imfilter(I, k);
subplot(1, n, 1), imshow(I1), title('0 degree filter');

k2 = rotateKernel(k, 45);
I2 = imfilter(I, k2);
subplot(1, n, 2), imshow(I2), title('45 degree filter');

k3 = rotateKernel(k, 90);
I3 = imfilter(I, k3);
subplot(1, n, 3), imshow(I3), title('90 degree filter');