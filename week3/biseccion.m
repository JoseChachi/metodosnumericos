function z=biseccion(f,a,b,Tol)
c=(a+b)/2;
error=(b-a)/2;
z=[a b c f(a) f(b) f(c) error];
N=ceil(log((b-a)/(2*Tol))/log(2));
fprintf('Se necesita %d iteraciones\n',N)
while error>Tol
        if f(a)*f(c)<0
        b=c;
        else
        a=c;
        end
    c=(a+b)/2;
    error=(b-a)/2;
    z=[z; a b c f(a) f(b) f(c) error];
end
end