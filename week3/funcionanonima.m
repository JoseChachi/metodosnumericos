f = @ (x) (x.*exp(-x)-0.2); %f(x) = x*e^-x - 0.2
%nombre de la funcion
%variables a considerar
%la función en sí
fplot(f, [0 8])
grid on
fzero(f, 0.2)
fzero(f, 2.8)