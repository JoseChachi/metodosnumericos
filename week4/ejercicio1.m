format long;
Tol = 10^-6;
syms x y
f1 = @(x,y) ( (sin(x) + 3*cos(x) -2));
f2 = @(x,y) ( (cos(x)-sin(y)+0.2));
A = [diff(f1,x);
diff(f1,y)]
F= @(x,y) ([(sin(x) + 3*cos(x) -2); (cos(x)-sin(y)+0.2)]);
x0 = [1;1];

diff(f1,x)
diff(f1,y)
diff(f2,x)
diff(f2,y)
dF=jacobian(F(x,y),[x,y]);
dFfun=@(x,y) ([(cos(x)-3*sin(x)) 0; -sin(x) -cos(y)]);
error=1;
iter = 0;
z=[iter x0' error];
while error>Tol
    x1=x0-inv(dFfun(x0(1),x0(2)))*F(x0(1),x0(2));
    error=norm(x1-x0)/norm(x1);
    iter = iter + 1;
    z=[z;iter x1' error];
    x0=x1;
end
z = array2table(z,'VariableNames',{'iteraciones','x0','x1','error'})
log(exp(1))
