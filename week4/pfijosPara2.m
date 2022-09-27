function z=pfijosPara2(g,x0,Tol)
error=1;
iter = 0;
z=[iter x0' error];
    while error>Tol
        x1 = g(x0(1), x0(2));
        error=norm(x1-x0)/norm(x1);
        iter = iter +1 ;
        z=[z;iter x1' error];
        x0=x1;
    end
    z = array2table(z,'VariableNames',{'iter','x0','x1','error'});
end