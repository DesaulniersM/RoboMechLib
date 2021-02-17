% twist2Transform Converts a twist vector to a transformation matrix
% 
% H = twist2Transform(t) Takes in a twist vector, t, and returns a 
% homogeneous transform matrix, H.
% 
% H = a 4x4 homogeneous matrix
% 
% t = a 6x1 twist vector
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20

function H = twist2Transform(t)

theta = norm(t(4:6))
k = t(4:6)/theta;

R = angleAxis2Rot(k, theta);

d = ((eye(3)-R)*cpMap(k) + t(4:6)*transpose(k))*t(1:3);

z = zeros(1,3);

H = [ R(1,:) d(1); R(2,:) d(2); R(3,:) d(3); z 1];


end