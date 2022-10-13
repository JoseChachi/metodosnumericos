% u: variable U
% r: variable rho
format long;
syms r u
Cd=0.0015
%Complete aquí sus cálculos
f = @(u,r) (0.0015*u*u*r);
dFU = diff(f,u)
dFR = diff(f,r)
error_u = 0.002;
u = 10;
error_p = (1.030-1.024)/2;
p = (1.030+1.024)/2;
error = abs(3*p*u/1000*error_u) + abs(3*u^2/2000*error_p);
%Asigne aquí las variables pedidas
errorT = error
Tau=[]
%Rango del estrés de viento
%I=[Tau-errort; Tau+errorT] =[Iizq; Ider]
Tleft=[]