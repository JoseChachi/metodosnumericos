format long;
Tol = 10^-4;
syms x y z
F=inline('[3*x-cos(y*z)-1/2;x^2-81*((y+0.1))^2+sin(z)+1.06;exp(-x*y)+20*z+(10*pi-3)/3]','x','y','z');
x0 = [0.1;0.1;-0.1];
newtonsPara3(F,x0,Tol)