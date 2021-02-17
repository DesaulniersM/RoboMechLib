% rotationError takes in a current and desired rotation and out puts an
% angle-axis representation of the rotation error.
% 
% rot_error_vec = rotationError(Rot_desired, Rot_current) Takes in a
% desired and current rotation matrix and returns an error rotation vector
% in angle-axis form.
% 
% Outputs
% rot_error_vec = The angle-axis representation of the error between
% Rot_desired and Rot_current
% 
% Inputs
% Rot_desired = The desired orientation in matrix form.
% Rot_current = The current orientation in matrix form.
% 
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 11-5-20

function rot_error_vec = rotationError(Rot_desired, Rot_current)

rot_error_mat = Rot_desired * Rot_current.';
[k, theta] = rot2AngleAxis(rot_error_mat);

rot_error_vec = k*theta;



end