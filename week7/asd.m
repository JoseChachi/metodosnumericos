%Resolviendo problemas de valores y vectores propios
%para el vector de clasificacion r
clc
A=[0 1 0 1 1;0 0 1 1 1 ; 1 0 0 1 0;0 0 0 0 1;0 0 1 0 0]
[Q,D]=eig(A)
%El primer valor es el unico real, ese es el que necesitamos
evals=diag(D)
vp1=evals(1)
%Encontramos la constante de proporcionalidad alpha
alpha=1/vp1
%Encontramos el vector r como vector propio correspondiente al
%primer valor propio
r=Q(:,1)
%Normalizando el vector de clasificacion
r=r/sum(r)

A=[3 2 4;2 0 2;4 2 3]
gershgorin(A)