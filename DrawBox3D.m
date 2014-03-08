function DrawBox3D (vertices)
% Draws a box with the eight corners specified in the input matrix which
% should have 2 rows and 8 columns. We assume that the corners are numbered
% in the same order as the Box3D function

% Fill the patch structure
fv.vertices = vertices(1:2,:)';
fv.faces = [1 2 3 4; 5 6 7 8; 2 6 7 3; 1 5 8 4];

% Draw the box
patch (fv, 'FaceColor', 'none');