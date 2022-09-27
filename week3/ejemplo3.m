f = inline('x^2');
a = -1;
b = 0;
if f(a)*f(b) < 0
      fprintf('Existe al menos una raiz')
else
    fprintf('No se puede afirmar que existe una raiz')
end