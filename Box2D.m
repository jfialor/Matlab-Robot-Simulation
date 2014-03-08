function vertices = Box2D ()
% Return the homogenous coordinates of a box in 2D 1 units on side centered at the
% origin a 3x4 matrix is returned one column for each of the four vertices

vertices = [-0.5  0.5 0.5 -0.5; ...
            -0.5 -0.5 0.5  0.5; ...
             1.0  1.0 1.0  1.0];
         