A = [6 0 -1 0 0; 1 -1 0 0 0; 0 -1 9 0 0;0 1 8 11 2; 3 1 0 0 -4];
b = [50 0 160 0 0];
b = transpose(b);
sol = linsolve(A,b)