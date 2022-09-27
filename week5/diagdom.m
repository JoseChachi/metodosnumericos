function op=diagdom(A)
%op=1: diagonal estrictamente dominante
%op=0: No es diagonal estrictamente dominante
[m,n]=size(A);
op=1;
if m==n
for k=1:m
if abs(A(k,k)) <= sum(abs(A(k,:)))-abs(A(k,k))
op=0;
break;
end
end
end