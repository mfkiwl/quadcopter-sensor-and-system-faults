function R = quadeul2rotSIMULINK(euler)
%quadeul2rotSIMULINK Convert euler angles 2 rotation for SIMULINK
%   Detailed explanation goes here
phi = euler(1);theta = euler(2);psi = euler(3);
Rz = [cos(psi) -sin(psi) 0;...
    sin(psi) cos(psi) 0;...
    0 0 1];
Ry = [cos(theta) 0 sin(theta);...
    0 1 0;...
    -sin(theta) 0 cos(theta)];
Rx = [1 0 0;...
    0 cos(phi) -sin(phi);...
    0 sin(phi) cos(phi)];

R = Rz*Ry*Rx;
% R = reshape(R,9,1);
end