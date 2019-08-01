function smoothed = smoothImage(I)
    H = fspecial('average', [5 5]);
    smoothed = imfilter(I, H);
end