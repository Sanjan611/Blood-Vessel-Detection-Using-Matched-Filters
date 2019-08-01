function mat = rotationMatrix(THETA)
    % The input parameter is THETA, the angle in degrees
    THETA = THETA*(pi/180);
    
    mat = [cos(THETA) -sin(THETA);
        sin(THETA) cos(THETA)];
    
end