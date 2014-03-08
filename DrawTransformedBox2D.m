function DrawTransformedBox2D (g)
% Takes a transformation matrix and uses it to draw a 2D square
result = g * Box2D();
DrawBox2D (result);

end

