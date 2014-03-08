function g = Rotation3D (axis, angle)
% Takes an axis and an angle and returns a transformation matrix based
% on those parameters.


switch axis
    case 'x'
        g = [1 0 0 0; 0 cos(angle) -sin(angle) 0; 
            0 sin(angle) cos(angle) 0; 0 0 0 1];
    case 'y'
        g = [cos(angle) 0 sin(angle) 0; 0 1 0 0; 
            -sin(angle) 0 cos(angle) 0; 0 0 0 1];
    case 'z'
        g = [cos(angle) -sin(angle) 0 0; sin(angle) cos(angle) 0 0;
            0 0 1 0; 0 0 0 1];
        
end

