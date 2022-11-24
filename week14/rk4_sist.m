function [z] = rk4_sist(f,g,a,b,x0,y0,h)
t = [a:h:b]';
n = (b-a)/h;
x = zeros(n+1,1);
y = zeros(n+1,1);
t(1)=a; x(1) = x0; y(1) = y0;
z=[0 t(1) x(1) y(1)];
for i = 1:n
 t(i+1) = t(i) + h;
 tm = t(i) + h/2;
 Kx1 = feval(f,t(i),x(i),y(i));
 Ky1 = feval(g,t(i),x(i),y(i));
 Kx2 = feval(f,tm,x(i)+Kx1*h/2,y(i)+Ky1*h/2);
 Ky2 = feval(g,tm,x(i)+Kx1*h/2,y(i)+Ky1*h/2);
 Kx3 = feval(f,tm,x(i)+Kx2*h/2,y(i)+Ky2*h/2);
 Ky3 = feval(g,tm,x(i)+Kx2*h/2,y(i)+Ky2*h/2);
 Kx4 = feval(f,t(i+1),x(i)+Kx3*h,y(i)+Ky3*h);
 Ky4 = feval(g,t(i+1),x(i)+Kx3*h,y(i)+Ky3*h);
 x(i+1) = x(i) + (Kx1 + 2*Kx2 + 2*Kx3 + Kx4)*h/6;
 y(i+1) = y(i) + (Ky1 + 2*Ky2 + 2*Ky3 + Ky4)*h/6;
 z=[z; i+1 t(i+1) x(i+1) y(i+1)];
end
end
