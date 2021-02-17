% transform2Twist Converts a transformation matrix to a twist vector.
% 
% t = transform2Twist(H) Takes in a homogeneous transformation matrix, H,
% and returns a twist vector, t.
% 
% t = a 6x1 twist vector
% 
% H = a 4x4 homogeneous matrix
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20


function t = transform2Twist(H)

[k,theta] = rot2AngleAxis(H(1:3,1:3));

d = H(1:3,4);

c = 1-cos(theta);

v = ((sin(theta)/(2*c))*eye(3) + ((2*c-theta*sin(theta))/(2*theta*c))*k*k.' - .5*cpMap(k))*d;

t = [v;theta*k];


end