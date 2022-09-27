function [S] = Maclaurin(x,n)
    S = 0;
    n = n -1;
    for k = 0:n
        S = S + (x^(2*k)/factorial(2*k))*((-1)^k);
    end
end