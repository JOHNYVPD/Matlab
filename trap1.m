clear all
close all
clc
f=inline('cos(x)');
a=pi/6;
b=pi/2;
h=0.1;
x=a:h:b;
fx=f(x);
% n=length(x);
% s=0;
% for i=1:n
%     if(i==1||i==n)
%         s=s+fx(i);
%     else
%         s=s+2*fx(i);
%     end
% end
% I=(h/2)*s

I=trapz(x,fx)