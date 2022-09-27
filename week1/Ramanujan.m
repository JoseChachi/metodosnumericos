
function [S] = Ramanujan(k)
    S = 0;
    k = k - 1;
    for x = 0:k
        S = S + ( factorial(4*x)*(1103+26390*x) ) / (power(factorial(x),4)*power(396,4*x));
    end
    S = S * 2* power(2,1/2) / 9801;
    S = 1 / S;
end