function z=newtonsPara2(F,x0,Tol)
syms x y
dF=jacobian(F(x,y),[x,y]);
dFfun=inline(subs(dF),'x','y')
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
    z = array2table(z,'VariableNames',{'iteraciones','x0','x1','error'});
end