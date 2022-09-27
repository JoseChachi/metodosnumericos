function [error] = errorR(bueno,aproximado)
    error = abs((bueno - aproximado) / bueno);
end