% myFunctionName Short description of what this function does.
% 
% [output1, output2] = myFunctionName(input1, input2) Now a more description 
%  multiline description of the function would be appropriate.
% 
% output1 = description of what the first output is/means include units if appropriate
% output2 = description of what the second output is/means include units if appropriate
% 
% input1 = description of what the first input is/means include units if appropriate
% input2 = description of what the second input is/means include units if appropriate
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20

function [phi, theta, psi] = rot2ZYZ(R)

theta1 = atan2(abs(sqrt(R(1,3)^2+R(2,3)^2)),R(3,3));
theta2 = atan2(-abs(sqrt(R(1,3)^2+R(2,3)^2)),R(3,3));

phi1 = atan2(R(2,3)/sin(theta1),R(1,3)/sin(theta1));
phi2 = atan2(R(2,3)/sin(theta2),R(1,3)/sin(theta2));

psi1 = atan2(R(3,2)/sin(theta1),-R(3,1)/sin(theta1));
psi2 = atan2(R(3,2)/sin(theta2),-R(3,1)/sin(theta2));

theta = [theta1 theta2];
phi = [phi1 phi2];
psi = [psi1 psi2];


end
