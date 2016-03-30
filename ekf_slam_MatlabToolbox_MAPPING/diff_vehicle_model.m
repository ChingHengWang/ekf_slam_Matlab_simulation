function xv= vehicle_model(xv, V,W,a,dt)
%
% INPUTS:
%   xv - vehicle pose [x;y;phi]
%   V - velocity
%   W - angular speed
%   dt - change in time
%
% OUTPUTS:
%   xv - new vehicle pose

xv= [xv(1) + V*dt*cos(xv(3,:)+W*dt); 
     xv(2) + V*dt*sin(xv(3,:)+W*dt);
     pi_to_pi(xv(3) + W*dt);
     %pi_to_pi(a)
     
     ];
 
 