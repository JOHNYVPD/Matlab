close all
clear all
clc
f=@(x)(x^3-x^2.*151+x.*5150-5000);
xl=[-10 20 80];
xu=[10 70 120];
xt=10^(-4);
int=[0 0 0];
n=length(xl);
for i=1:n
xf=xu-(((f(xu(i))))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))));
end
while abs(f(xf(i)))>=xt
    int=int+1;
    xm=(xl(i)+xu(i))/2;
    if(f(xl(i))*f(xf(i)))>0
        xl(i)=xf(i);
    else
        xu(i)=xf(i);
    end
    xf=xu-(((f(xu(i))))*(xl(i)-xu(i))/(f(xl(i))-f(xu(i))));
end
int
xf
xft=-10:0.1:100;
p=[1 -151 5150 -5000];
y=polyval(p,xft);
plot(xft,y)
grid on