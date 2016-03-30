function [W,a,iwp]= diff_compute_move(x, wp, iwp, minD, a, W)
%function [G,iwp]= compute_steering(x, wp, iwp, minD, G, rateG, maxG, dt)
%
% INPUTS:
%   x - true position
%   wp - waypoints
%   iwp - index to current waypoint
%   minD - minimum distance to current waypoint before switching to next
%   W - angular speed
%   dt - timestep
%
% OUTPUTS:
%   W - new current angular speed
%   iwp - new current waypoint
%


% determine if current waypoint reached
cwp= wp(:,iwp);
d2= (cwp(1)-x(1))^2 + (cwp(2)-x(2))^2;
if d2 < minD^2
    iwp= iwp+1; % switch to next
    if iwp > size(wp,2) % reached final waypoint, flag and return
        iwp=0;
        return;
    end    
    cwp= wp(:,iwp); % next waypoint
end

% compute change in G to point towards current waypoint
delta_a=pi_to_pi(atan2(cwp(2)-x(2), cwp(1)-x(1))-x(3)-a);
if delta_a >0.2
    delta_a=0.2;
else if delta_a<-0.2
    delta_a=-0.2;
    end
end

% atan2(cwp(2)-x(2), cwp(1)-x(1))
% x(3)
a=a+delta_a;
W= 1* (a);
