function [x,P]= EKF_update(x,P,v,R,H)
% Using EKF_update to replace orgin KF_cholesky_update 
PHt= P*H';
E= H*PHt + R;

EInv= inv(E); 
K= PHt * EInv;
%x= x + K*v; % update x statue
            % x number not only viehcle 3 element!

  Kv=K*v;
  x(1)=x(1)+Kv(1);    
  x(2)=x(2)+Kv(2); 
  x(3)=x(3)+Kv(3); 
P= P-K*H*P;
