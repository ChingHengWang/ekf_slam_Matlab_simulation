function [V,W]= add_control_noise(V,W,Q, addnoise)
%function [V,G]= add_control_noise(V,G,Q, addnoise)
%
% Add random noise to nominal control values. We assume Q is diagonal.

if addnoise == 1
    V= V + randn(1)*sqrt(Q(1,1));
    W= W + randn(1)*sqrt(Q(2,2));
end

