function h= setup_animations()
h.xt= patch(0,0,'b','erasemode','xor'); % vehicle true
h.xv= patch(0,0,'r','erasemode','xor'); % vehicle estimate
h.pth= plot(0,0,'k.','markersize',2,'erasemode','background'); % vehicle path estimate
h.obs= plot(0,0,'r','erasemode','xor'); % observations
h.xf= plot(0,0,'r+','erasemode','xor'); % estimated features
h.cov= plot(0,0,'r','erasemode','xor'); % covariance ellipses