clear all
format long
syms VS RL RS

eRL = 0.01;
eVS = 0.12;
eRS = 0.015;

f = (power(VS,2)* RL) / (power(RL + RS,2));

dRL = diff(f,RL);
dVS = diff(f,VS);
dRS = diff(f,RS);


error = abs(dRL*eRL) + abs(dVS*eVS) + abs(dRS*eRS);

errorABS = double(subs(error,[VS,RL,RS],[12,10,2.495]));
errorABS
P = double(subs(f,[VS,RL,RS],[12,10,2.495]));
P
