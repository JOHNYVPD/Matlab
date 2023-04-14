close all
clear all
clc
x=[0:5]
y=[2.1 7.7 13.6 27.2 40.9 61.1]
n=length(x);
sumx=sum(x);
sumxsq=sum(x.^2);
sumxcd=sum(x.^3);
sumxtf=sum(x.^4);
sumy=sum(y);
sumxy=sum(x.*y);
sumx2y=sum((x.^2).*y);
A=[n sumx sumxsq;sumx sumxsq sumxcd;sumxsq sumxcd sumxtf];
B=[sumy;sumxy;sumx2y];
a=A\B
a0=a(1)
a1=a(2)
a2=a(3)
plot(x,y,'*')
hold on
ym=a(1)+a(2).*x+a(3).*x.*x;
plot(x,ym,'o--')