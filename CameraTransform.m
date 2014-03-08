function gCW = CameraTransform (yaw, pitch, T)
% Returns a 4 x 4 matrix representing the translations and rotations
%related to the specified yaw, pitch and translate units.

gCW = Translation3D(T) * Rotation3D('x',pitch) * Rotation3D('y', yaw);

end

