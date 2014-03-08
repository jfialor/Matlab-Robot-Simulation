function vertices = Box3D ()
% Return the homogenous coordinates of a box in 3D 1 units on side centered
%at the origin a 4x8 matrix is returned one column for each of the eight 
%fvertices

vertices = [-0.5  0.5 0.5 -0.5 -0.5  0.5  0.5 -0.5; ...
            -0.5 -0.5 0.5  0.5 -0.5 -0.5  0.5  0.5; ...
             0.5  0.5 0.5  0.5 -0.5 -0.5 -0.5 -0.5; ...
             1.0  1.0 1.0  1.0  1.0  1.0  1.0  1.0];
         