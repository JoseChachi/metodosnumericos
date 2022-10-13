function M=tabladif(x,y)
n=length(x);
M=zeros(n);
M(1:n,1)=y;
for k=1:n-1
Difx=x(k+1:n)-x(1:n-k);
Dify=diff(y)./Difx;
M(1:n-k,k+1)=Dify;
y=Dify;
end
M=[x M];
end