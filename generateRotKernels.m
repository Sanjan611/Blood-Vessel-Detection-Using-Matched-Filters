function cellArr = generateRotKernels(kernel, resolution)
    % This function generates a cell array that contains all the kernels of
    % different orientations based on the angle resolution
    
    num = round(180/resolution);    % total num of kernels based on given angle resolution
    
    cellArr = cell(1, num);
    
    for i=0:(num-1)
        cellArr{1, i+1} = rotateKernel(kernel, i*resolution);
    end
    
end