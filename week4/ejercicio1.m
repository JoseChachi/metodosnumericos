format long;
Tol = 10^-3;
syms x y
F=inline('[2*x-y-exp(-x);-x+2*y-exp(-y)]','x','y');
x0 = [0.5;1];
newtons(F,x0,Tol)