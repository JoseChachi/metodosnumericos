clear all
syms R1 R2
er1=4;
er2=2;
f1=R1+R2;
df_R1=diff(f1,{R1});
df_R2=diff(f1,{R2});
erf_serie=abs(df1_R1)*er1+abs(df1_R2)*er2;
f2=R1*R2/(R1+R2);
df2_R1=diff(f2,{R1});
df2_R2=diff(f2,{R2});
erf2=simplifyFraction(abs(df2_R1)*er1+abs(df2_R2)*er2);
erf2_paralelo=double(subs(erf2,{R1,R2},{20,300}));