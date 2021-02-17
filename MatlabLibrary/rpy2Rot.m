% rpy2Rot Converts roll, pitch, and yaw coordinates into a rotation matrix.
% 
% R = rpy2Rot(roll, pitch, yaw) This function takes 3 rotation values, roll,
% pitch, and yaw, and converts them to a 3x3 rotation matrix.
% 
% R = a 3x3 rotation matrix
% 
% roll = a rotation about the X axis in rads
% pitch = a rotation about the Y axis in rads
% yaw = a rotation aboutthe Z axis in rads
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20

function R = rpy2Rot(roll, pitch, yaw)

R = rotZ(yaw)*rotY(pitch)*rotX(roll)

end