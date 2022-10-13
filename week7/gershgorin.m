function []=gershgorin(A)
[m,n]=size(A)
for j=1:n
%(h;k) centro de la circunferencia
h=abs(A(j,j));
k=0;
r=sum(abs(A(j,:)))-abs(A(j,j));
theta=[0:0.01:2*pi];
xx=r*cos(theta)+h;
yy=r*sin(theta)+k;
plot(xx,yy)
hold on
end
grid on
end