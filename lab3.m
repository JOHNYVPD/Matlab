close all
clear all
clc
x=[1:5];
X=log10(x);
y=[0.5 1.7 3.4 5.7 8.4];
yo=log10(y)
sumx=sum(x);
sumy=sum(yo);
sumxy=sum(x.*yo);
sumxsq=sum(x.^2);
n=length(x);
A=[n sumx;sumx sumxsq];
B=[sumy;sumxy];
m=A\B
a2=10^(m(1))
b2=m(2)
a2
b2
plot(x,y,'o')
hold on
ym=a2*(x.^(b2));
plot(x,ym)