function DrawBox2D (vertices)
% Draws a box with the four corners specified in the input matrix which
% should have 4 columns. We assume that the corners are numbered
% in counter clockwise order

% Fill the patch structure
fv.vertices = vertices(1:2,:)';
fv.faces = [1 2 3 4];

% Draw the box
patch (fv, 'FaceColor', 'none');