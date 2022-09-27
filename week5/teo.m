syms x y z
F = @ (x,y,z) ([-0.1 + 0.1*z; 2/3 - 1/3*x + 1/3*z; 0.4 - 0.4*x - 0.4*y]);
x0 = [1;2;0];

gaussSeidelPara3Iter(F,x0,2)