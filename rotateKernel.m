function rotated = rotateKernel(kernel, THETA)
    % This function rotates a matrix (in this case a kernel) by an angle
    % theta (degrees). The kernel will be of odd size so an explicit centre can be
    % found. The code has treated the centre as a (0, 0) point
    
    %{
    % ---------------------------------------------------------------------
    % This portion of the code is a trial of doing it by scratch.
    
    [M, N] = size(kernel);
    % Ideally, M and N are the same
    
    rotated = zeros(M, N);
    rot_matrix = rotationMatrix(THETA); % This will be a 2x2 matrix
    
    
    % This portion of the code is a trial of doing it by scratch.
    for i=1:M
        for j=1:N
            [a b] = round([i j]*rot_matrix');
        end
    end
    %----------------------------------------------------------------------
    %}
    
    
    rotated = imrotate(kernel, THETA);  
    % makes use of existing function in MATLAB
    % size of rotated is not necessarily the same as the original kernel
    % passed to the function
    
end
