function fv = Extrude (XY, Z1, Z2)
% Compute a 3D extrusion of a 2D polygon
% XY is an n x 2 array of the polygon vertices

n = size(XY,1);

v1 = XY;
v1(:,3) = Z1;

v2 = XY;
v2(:,3) = Z2;

vertices = [v1; v2];

faces = NaN(n+2, n);

% Front and back faces
faces(1,:) = 1:n;
faces(2,:) = (n+1):(2*n);

for i = 1:n
    if (i < n)
        next_index = i+1;
    else
        next_index = 1;
    end
    
    faces(i+2,1:4) = [i, next_index, next_index+n, i+n];
end

fv.vertices = vertices;
fv.faces = faces;