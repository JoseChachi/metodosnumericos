function y=redond(x,n)
%Devuelve x redondeado a n cifras significativas.
if x==0
y=0;
else
s=sign(x);
expo=ceil(log(abs(x))/log(10));
mant=exp(log(abs(x))-expo*log(10));
nm=round(mant*10^n)/(10^n);
 y=s*nm*10^expo;
 end
end


