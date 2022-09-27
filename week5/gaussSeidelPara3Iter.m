function z = gaussSeidelPara3Iter(M, semilla, iter)
    x0 =[semilla(1);semilla(2);semilla(3)];
    start = 0;
    z = [start x0(1) x0(2) x0(3)];
    
    for k = 1:iter
        start = start + 1;

        array = M(x0(1),x0(2),x0(3));
        x1 = array(1);

        array = M(x1,x0(2),x0(3));
        x2 = array(2);

        array = M(x1,x2,x0(3));
        x3 = array(3);

        x0 = [x1;x2;x3];
        z = [z;start x0(1) x0(2) x0(3)];
    end
    z = array2table(z, "VariableNames",["Iter","Raiz 1", "Raiz 2", "Raiz 3"]);

end