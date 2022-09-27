function rpta = FormatoIEE_SP(n)
    n1 = sprintf('%tx',n);
    n2 = hex2dec(n1);
    n3 = dec2bin(n2); 
    
    if(n < 0)
        rpta = strcat('',n3);
    end
    if(n> 0)
        rpta = strcat('0',n3);
    end
    length(rpta)
end