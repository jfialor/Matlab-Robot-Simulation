function uv = ProjectPoints (XYZ, yaw, pitch, T)
% Project the points in XYZ onto the screen by using CameraTransform and
%PerspectiveProjection to form transformation and projection matrices.

if size(XYZ,1)~=4 
XYZ(end+1,:)= 1; 
end

gCW = CameraTransform (yaw, pitch, T);

uv = PerspectiveProjection(gCW * XYZ);



 
end

