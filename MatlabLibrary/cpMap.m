% cpMap Creates a cross-product mapping of a vector.
% 
% X = cpMap(w) takes in a vector and returns a matrix that may be use to 
% perform cross products with that vector.
% 
% X = a 3x3 matrix that, when multiplied, is the equivalent of performing a
% cross product with w
% 
% w = 3x1 vector that you want to perform a cross-product with.
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20


function X = cpMap(w)

X = [0 -w(3) w(2); w(3) 0 -w(1); -w(2) w(1) 0];

end