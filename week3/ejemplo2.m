xx = [-1:0.01:4];
yy1 = exp(xx);
f2 = inline('x.^-2-2*x');
yy2 = f2(xx);
plot(xx,yy1,'r',xx,yy2,'b')
grid on