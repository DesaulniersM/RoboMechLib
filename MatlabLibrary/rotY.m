% rotY Performs a rotation about the y axis.
% 
% R = rotY(theta) Given an input angle theta, in rads, this function creates a rotation
% matrix corresponding to a rotation of theta radians aboutthe y axis.
% 
% R = A 3x3 rotation matrix
% 
% theta = radians to be rotated
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20

function R = rotY(theta)

R = [cos(theta) 0 sin(theta); 0 1 0; -sin(theta) 0 cos(theta)];

end