function kernel = makeKernel(sigma, L)
    % This function generates the kernel at zero degree orientation
    % The research paper had truncated the kernel at 3*sigma along the x
    % axis
    
    % Define N as the neighbourhood
    N = zeros(round(2*3*sigma+1), L);
    kernel = N; % set the kernel to be the same size as the neighbourhood before we set its coefficients
    
    offset = [3*sigma+1, ceil(L/2)];
    
    for i=-3*sigma:1:3*sigma
        for j=fix(-L/2):1:fix(L/2)
            u = i+offset(1);
            v = j+offset(2);
            kernel(u, v) = -exp(-(i^2)/(2*sigma^2));
        end
    end
    
    %return
    mean_k = mean(mean(kernel));
    
    kernel = kernel - mean_k;
    
    % The coefficients are scaled by a factor of 10
    kernel = kernel*10;
    % and then are truncated to their nearest integer
    kernel = round(kernel);
    
    
end
