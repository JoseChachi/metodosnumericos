format long;
Tol = 10^-3;
syms x y
G=inline('[(y+exp(-x))/2;(x+exp(-y))/2]','x','y');
x0 = [0.5;1];
z = pfijosPara2(G,x0,Tol)

