% rotX Computes a rotation about the x axis.
% 
% R = rotX(theta) Takes in a value for rotation and returns a corresponding
% matrix to rotate a vector around the x axis.
% 
% R = a 3x3 rotation matrix about the x axis
% 
% theta = amount to rotate in rads
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20

function R = rotX(theta)

R = [1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)];

end