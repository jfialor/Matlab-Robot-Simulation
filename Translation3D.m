function g = Translation3D (T)
%returns a 3D translation matrix by using the different values in the input
% three-dimensional vector
    g = [1 0 0 T(1); 0 1 0 T(2); 0 0 1 T(3); 0 0 0 1];

end

