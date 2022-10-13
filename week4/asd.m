Tol = 0.000001;
Error = 1;
n = 0;
x0 = [1; 1];
syms x y
F = inline('[(sin(x) + 3*cos(x) -2); (cos(x)-sin(y)+0.2)]','x','y')
dF = jacobian(F(x,y),[x,y]);
dfFun = inline(subs(dF),'x','y');
for k = 1:1
    n = n +1;
    x1 = x0 - inv(dfFun(x0(1),x0(2)))*F(x(0),x(1));
    error = abs(norm(x1-x0,inf)/norm(x1,inf));
    x0 = x1;
end