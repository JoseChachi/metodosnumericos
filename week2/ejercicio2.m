syms c m
t=6, g=9.8
er_c=1.5
er_m=2
%Complete el código en Matlab
f = ((g*m)/c) * (1- power(exp(1),-(c/m)*t));
dC = diff(f,c);
dM = diff(f,m);
%Complete Aquí
Er_vel= abs(dC * er_c) + abs(dM * er_m)  ;          %Error absoluto de la velocidad
Er_vel = double(subs(Er_vel,[c,m],[12.5,50]));
vel= double(subs(f,[c, m],[12.5, 50]));                   %velocidad medida
%Rango de la velocidad
%I=[vel-Er_vel;vel+Er_vel] =[Iizq; Ider]
vel
Er_vel
Ider=vel+Er_vel