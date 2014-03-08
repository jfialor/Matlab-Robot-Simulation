function uv = PerspectiveProjection (XYZ)
% uses Perspective Projection to convert a matrix of vectors into their
% corresponding vertices to be projected onto the camera screen

x = XYZ(1,:);
y = XYZ(2,:);
z = XYZ(3,:);
u = -x ./ z;
v = -y ./ z;


uv = [u;v];

end

