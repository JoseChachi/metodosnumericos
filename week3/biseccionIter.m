function z = biseccionIter(f,a,b,Maxiter)
c = (a+b)/2;
error=(b-a)/2;
z = [a b c f(a) f(b) f(c) error];
for k=1:Maxiter
    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
    c = (a+b)/2;
    error = (b-a)/2;
    z = [z; a b c f(a) f(b) f(c) error];
end
end