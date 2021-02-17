% transError takes in a current and desired transformation matrix and outputs
%  a translation and rotation error matrix.
% 
% [error_vec] = transError(Td, Tc) Takes in a
% desired and current transformation matrix and returns an error vector
% in angle-axis form.
% 
% Outputs
% error_vec = a 6x1 vector where the first 3 elements are position error
% and the last 3 are rotation error.
% 
% Inputs
% Td = The desired orientation and position transformation matrix.
% Tc = The current orientation and position transformation matrix.
% 
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 11-5-20

function [error_vec] = transError(Td, Tc)
rot_error = rotationError(Td(1:3,1:3),Tc(1:3,1:3));
if any(isnan(rot_error),'all')
    rot_error = zeros(3,1);
end
pos_error = Td(1:3,4) - Tc(1:3,4);

error_vec = [pos_error; rot_error];



end