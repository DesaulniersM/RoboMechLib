% rotZ Performs a rotation about the z axis.
% 
% R = rotZ(theta) Given an input angle theta, in rads, this function creates a rotation
% matrix corresponding to a rotation of theta radians aboutthe z axis.
% 
% R = A 3x3 rotation matrix
% 
% theta = radians to be rotated
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20

function R = rotZ(theta)

R = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];

end