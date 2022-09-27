function x = FormatoIEE_DP(b)

% Extraiga los bits de signo, exponente y mantisa de la cadena.

s = b(1);
exp = b(2:12);
man = b(13:64);

% Convierte los bits a valores decimales.

dec_s = bin2dec(s);
dec_exp = bin2dec(exp);
dec_man = bin2dec(man);

% Convierte a un número real usando el IEEE Standard 754.
dec_s
x = (-1)^dec_s * 2^(dec_exp-1023)*(1+dec_man/2^52); 