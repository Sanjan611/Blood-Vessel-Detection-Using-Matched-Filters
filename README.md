# Blood-Vessel-Detection-Using-Matched-Filters
This project aims to reproduce the algorithm presented in the research paper of IEEE 1989, Blood Vessel Detection in Retinal Images using 2D Matched Filters. I have implemented the concepts brought through in MATLAB 2019 with the help of Toolbox functions.

Here is a link to the paper: https://ieeexplore.ieee.org/document/34715

## Summary of the Paper
This paper uses the concept of matched filters to detect piece-wise linear segments of blood vessels in retinal images. The filters are so produced by assuming that the distribution of pixel intensities across a blood vessel normally is best represented by a Gaussian distribution.



## My Results

## My Conclusions
This algorithm works very well in detecting blood vessels in retinal images if an estimate of the general width of the blood vessels is known. The result is very sensitive to the value of sigma chosen for the Gaussian distribution. 

It is also a challenge to remove the optic disc in the identification. 
