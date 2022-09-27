%Reactores
A = [6 0 -1 0 0; -3 3 0 0 0; 0 -1 9 0 0; 0 -1 -8 11 -2; -3 -1 0 0 4];
b = [50 0 160 0 0];
b = transpose(b);

%Armadura
%A = [-sin(pi/6) 0 -sin(pi/3) 0 0 0; -cos(pi/6) 0 cos(pi/3) 0 0 0; sin(pi/6) 0 0 0 1 0; cos(pi/6) 1 0 1 0 0; 0 0 sin(pi/3) 0 0 1; 0 -1 -cos(pi/3) 0 0 0];
%b = [1000; 0; 0; 0; 0; 0];
%x0 = [0; 0;0;0;0; 0];
%A([1 2 3 4 5 6], :) = A([1 6 2 4 3 5], :);
%b([1 2 3 4 5 6], :) = b([1 6 2 4 3 5], :);


%Temperatura de placas




x0 = [0; 0; 0; 0; 0];
D = diag(diag(A));
L = -tril(A,-1);
U = -triu(A, 1);

Tgs = inv(D-L)*U
Tj = inv(D)*(L+U)

radio_esp_Tj = max(abs(eig(Tj)))
radio_esp_Tgs = max(abs(eig(Tgs)))

Error = 1;

if radio_esp_Tj < 1
    fprintf('El metodo de Jacobi converge, el radio espectral es menor a 1.\n')
else
    fprintf('El metodo de Jacobi diverge, el radio espectral es mayor a 1.\n')
end

if radio_esp_Tgs < 1
    fprintf('El metodo de Gauss converge, el radio espectral es menor a 1.\n')
else
    fprintf('El metodo de GAuss diverge, el radio espectral es mayor a 1.\n')
end
iter = 0;
z = [iter x0'];

while Error > 5*10^-8
    x1 = Tgs*x0 + inv(D-L)*b;
    Error = norm(x1-x0,2)/norm(x1,2);
    x0 = x1;
    z = [z;iter x0'];
end
z = array2table(z,"VariableNames",["Iter","A","B","C","D","E"])
x0 = [0;0;0;0;0];
iter = 0;
z = [iter x0'];
Error = 1;
while Error > 5*10^-8
    x1 = Tj*x0 + inv(D)*b;
    Error = norm(x1-x0,2)/norm(x1,2);
    x0 = x1;
    z = [z;iter x0'];
end
z = array2table(z,"VariableNames",["Iter","A","B","C","D","E"])


T = zeros(20,20);
for k = 1:19
    T(k,k) = 4;
    T(k,k+1) = -1;
    T(k+1,k) = -1;
    
end


T(20,20) = 4;


A = zeros(400,400);


for k = 1:19
    A((k-1)*20+1:k*20,(k-1)*20+1:k*20) = T(1:20,1:20);
    A(k*20,k*20+1) = -1;
    A(k*20+1,k*20) = -1;
end

A((20-1)*20+1:20*20,(20-1)*20+1:20*20) = T(1:20,1:20);


