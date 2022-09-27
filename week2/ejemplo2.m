N = sprintf('%tx',625);
N1 = hex2dec(N);
N2 = dec2bin(N1);

length(N2);

N = strcat('0',N2)

b='10111110011000000000000000000000';
s=b(1);
e=b(2:9);
m=b(10:32);
dec_s=bin2dec(s);
dec_e=bin2dec(e);
dec_m=bin2dec(m)*2^(-length(m));
x=(-1)^dec_s*2^(dec_e-127)*(1+dec_m)