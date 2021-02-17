% rot2AngleAxis Converts a rotation matrix to angle axis form.
% 
% [k, theta] = rot2AngleAxis(R) Converts a 3x3 rotation matrix, R, into an
% angle in rads, theta, and a vector, k.
% 
% k = an vector about which the rotation will take place
% theta = the angle, in rads, of the rotation
% 
% R = a 3x3 rotation matrix
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20

function [k, theta] = rot2AngleAxis(R)
vec=[R(3,2)-R(2,3); R(1,3)-R(3,1); R(2,1) - R(1,2)];
theta = atan2(.5*norm(vec), (trace(R)-1)/2);

if abs(theta-pi) <= 0.001
    
    k1 = abs(sqrt((R(1,1)+1)/2));
    k2 = R(2,1)/(2*k1);
    k3 = R(3,1)/(2*k1);
    
    k = [k1; k2; k3];
else
    k = (1/(2*sin(theta)))*vec;

end

end