% rot2Quat Convert a rotation matrix to quaternion forms.
% 
% Q = rot2quat(R)  
%  Given a 3x3 rotation matrix this function computes the possible
% values for the real and imaginary components of the quaternion. It picks 
% the largest valued component and uses it to solve for the others.
% 
% Q = the quaternion vector. In the form [q0; q1; q2; q3] where q1, q2, and
% q3 are the imaginary components.
% 
% R = a 3x3 rotation vector
% 
% Matthew Desaulniers
% 10880948
% MEGN 544
% 9-6-20



function Q = rot2Quat(R)

b =  (1+trace(R))/4;
c = (1+R(1,1)-R(2,2)-R(3,3))/4;
d = (1-R(1,1)+R(2,2)-R(3,3))/4;
e = (1-R(1,1)-R(2,2)+R(3,3))/4;

qMaxIndex = find([b c d e] == max([b c d e]));
qMaxVal = max([b c d e]);


switch qMaxIndex(1)
    case 1
        q0= sqrt(qMaxVal);
        q1=(R(3,2)-R(2,3))/(4*q0);
        q2=(R(1,3)-R(3,1))/(4*q0);
        q3=(R(2,1)-R(1,2))/(4*q0);
    case 2
        q1= sqrt(qMaxVal);
        q0=(R(3,2)-R(2,3))/(4*q1);
        q2=(R(1,2)+R(2,1))/(4*q1);
        q3=(R(1,3)+R(3,1))/(4*q1);
    case 3
        q2= sqrt(qMaxVal);
        q0=(R(1,3)-R(3,1))/(4*q2);
        q1=(R(1,2)+R(2,1))/(4*q2);
        q3=(R(2,3)+R(3,2))/(4*q2);
    case 4
        q3= sqrt(qMaxVal);
        q0=(R(2,1)-R(1,2))/(4*q3);
        q1=(R(1,3)+R(3,1))/(4*q3);
        q2=(R(2,3)+R(3,2))/(4*q3);
    otherwise
        
end

Q = [q0; q1; q2; q3];

end

