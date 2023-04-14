close all
clear all
clc
x=[1:7]
y=[0.5 2.5 2 4 3.5 6 5.5]
sumx=sum(x);
sumy=sum(y);
sumxy=sum(x.*y);
sumxsq=sum(x.^2);
n=length(x);
a=[n sumx;sumx sumxsq];
b=[sumy;sumxy];
m=a\b
plot(x,y,'o--')
hold on
ym=m(1)+m(2).*x;
plot(x,ym,'--')


