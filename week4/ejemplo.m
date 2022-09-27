format long
%% OBS: no usar inline para definir la función
syms x y z
F = @ (x,y,z) ([x+y^2+log(z)-7;3*x+2^y-z^3+1;x+y+z-5]);
x0 = [1;1;1];
dF = jacobian(F(x,y,z), [x,y,z]);
dFfun = @ (x,y,z) (subs(dF));
for k = 1:3
   x1 = x0 - inv(dFfun(x0(1),x0(2),x0(3)))*F(x0(1),x0(2),x0(3));
   x0 = x1;
end
a = double(x0(1))
b = double(x0(2))
c = double(x0(3))
