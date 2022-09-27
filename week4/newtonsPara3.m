function z=newtonsPara3(F,x0,Tol)
syms x y z
dF=jacobian(F(x,y,z),[x,y,z]);
dFfun=inline(subs(dF),'x','y','z')
error=1;
iter = 0;
z=[iter x0' error];
    while error>Tol
        x1=x0-inv(dFfun(x0(1),x0(2),x0(3)))*F(x0(1),x0(2),x0(3));
        error=norm(x1-x0)/norm(x1);
        iter = iter + 1;
        z=[z;iter x1' error];
        x0=x1;
    end
    z = array2table(z,'VariableNames',{'iteraciones','x0','x1','x2','error'});
end