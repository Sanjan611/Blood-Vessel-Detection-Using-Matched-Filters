function I_corr = getCorrForAllPixels(kernel, I, resolution, threshold, show)
    % This function aims to get the correlation value for each pixel in the
    % image.
    
    % Trying: First flipping the kernel so that we can implement
    % convolution with it, which is effectively correlation for each pixel
    % kernel = flip(flip(kernel, 2));
    % This kernel can now be treated as a filter
    
    
    % I2 = imfilter(I, kernel);
    
    cellArr = generateRotKernels(kernel, resolution);
    
    % NOTE: Access cell array elements as cellArr{1, 1}
    
    imgArr = cell(1, length(cellArr));
    
    for i=1:length(cellArr)
        imgArr{1, i} = imfilter(I, cellArr{1, i});
    end
    
    [m, n] = size(I);
    % The imgArr elements should have the same size as I
    I_corr = zeros(size(I));
    
    for i=1:m
        for j=1:n
            valArr = zeros(1, length(cellArr));
            for k=1:length(cellArr)
                valArr(1, k) = imgArr{1, k}(i, j);
            end
            
            if(max(valArr) > threshold)    % WHY THE THRESHOLD?? - to classify as blood vessel or not
                I_corr(i, j) = max(valArr);
            end
        end
    end
    
    % Visualising what each kernel does to the image
    if(show ~= false)
        figure
        for i=1:length(imgArr)
            subplot(3, length(imgArr)/3, i), imshow(imgArr{1, i}), title([num2str((i-1)*resolution), ' degrees']);
        end
    end
    
    % Visualising each kernel
    if(show ~= false)
        figure
        for i=1:length(cellArr)
            subplot(3, length(cellArr)/3, i), imshow(mat2gray(cellArr{1, i})), title([num2str((i-1)*resolution), ' degrees']);
        end
    end
    
    
end