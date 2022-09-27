function z = jacobiPara2Iter(M, semilla, iter)
    x0 =[semilla(1);semilla(2)];
    start = 0;
    z = [start x0(1) x0(2)];
    
    for k = 1:iter
        start = start + 1;
        array = M(x0(1),x0(2));
        x1 = array(1);
        x2 = array(2);
        x0 = [x1;x2];
        z = [z;start x0(1) x0(2)];
    end
    z = array2table(z, "VariableNames",["Iter","Raiz 1", "Raiz 2"]);

end