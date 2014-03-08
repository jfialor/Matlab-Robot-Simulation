function g = Rotation2D( theta )
%Takes an angle and returns a rotation matrix corresponding to it

g = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];

end

