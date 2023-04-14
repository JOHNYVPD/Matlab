C=[0.5 0.8 1.5 2.5 4];
K=[1.46 2.9 4.92 6.27 7.19];
k=exp(K);
n=length(C);
sumc=sum(C);
sumk=sum(k);
sumck=sum(C.*k);
sumcsq=sum(C.*2);
A=[n sumc;sumc sumcsq];
B=[sumk;sumck];
a=A\B
s1=exp(a(1));
s2=a(2)\C;
km=(s1*exp(2\C));
k1=km/exp(s2/C);
plot(C,K,'o')
hold on
plot(C,k1,'*')

