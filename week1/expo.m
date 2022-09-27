function [S] = expo(x,n)
    format long
    S = 0;
    for k = 0:n
            S = S + x^k/factorial(k);
    end
end