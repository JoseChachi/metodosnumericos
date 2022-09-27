function [z]=jacobiConError(A,b,x0,Tol, maxIter)
    D=diag(diag(A));
    L=-tril(A,-1);
    U=-triu(A,1);
    Tj=inv(D)*(L+U);
    cj=inv(D)*b;
    error=1;
    z=[x0' error];
    iter = 0;
        while error>Tol && iter < maxIter
        iter = iter +1;
        x1=Tj*x0+cj;
        error=norm(x1-x0,inf)/norm(x1,inf);
        z=[z;x1' error];
        x0=x1;
        end
        array2table(z);
end