function [P]=solverHHYP(D,Q,L,Y,mu,lambda)
P=zeros(size(D));
% temp=H+Lambd/mu;
temp=Q-(Y+L)/mu;
P(D==0)=temp(D==0);
% d = sign(phi + b).*max(abs(phi + b) -1/lambda/mu,0) ;
P(D~=0) = sign(temp(D~=0)).*max(abs(temp(D~=0))-lambda/mu,0) ;