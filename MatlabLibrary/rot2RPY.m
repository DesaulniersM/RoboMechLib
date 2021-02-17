% rot2RPY Converts a rotation matrix into roll, pitch, and yaw variables
% 
% [roll, pitch, yaw] = rot2RPY(R) Takes in a 3x3 rotation matrix and returns 3 
% 2x1 vectors contatining the roll, pitch, and yaw angles in rads.
% 
% roll = roll angle in rads. 2x1 vector
% pitch = pitch angle in rads. 2x1 vector
% yaw = yaw angle in rads. 2x1 vector
% 
% R = 3x3 rotation matrix
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20

function [roll, pitch, yaw] = rot2RPY(R)

pitch = [atan2( -R(3,1),sqrt(R(3,2)^2+R(3,3)^2)); atan2( -R(3,1),-sqrt(R(3,2)^2+R(3,3)^2))]

if ((pitch(1) - pi/2) ==0)|((pitch(1) - pi/2) == -pi)
    roll = [atan2(R(1,2)/sin(pitch(1)),R(1,3)/sin(pitch(1))) ; atan2(R(1,2)/sin(pitch(2)),R(1,3)/sin(pitch(2))) ]
    yaw = [0 ; 0]
else

roll = [atan2(R(3,2)/cos(pitch(1)), R(3,3)/cos(pitch(1))); atan2(R(3,2)/cos(pitch(2)), R(3,3)/cos(pitch(2)))]

yaw  = [atan2(R(2,1)/cos(pitch(1)), R(1,1)/cos(pitch(1))); atan2(R(2,1)/cos(pitch(2)), R(1,1)/cos(pitch(2)))]

end
end