function z=newton(f,x0,Tol)
syms x
df=diff(f(x));
dfu=inline(subs(df),'x');
z=[x0];
error=1;
    while error>Tol
    x1=x0-f(x0)/dfu(x0);
    z=[z;x1];
    error=abs(x1-x0)/abs(x1);
    x0=x1;
end
end