clear all
close all
clc

syms x;
y=0.6*x;
y1=2*x;
y2=sqrt(y1);
a=0:0.2:8;
yt=matlabFunction(y);
yt1=matlabFunction(y2);
ytf=yt(a)
ytf1=yt1(a)
plot(a,ytf)
hold on
plot(a,ytf1)
f=intersect(ytf,ytf1)
% t=0:0.01:5.5;
% fx=yt(t);
% n=length(t);
% s=0;
% for i=1:n
%     if(i==1||i==n)
%         s=s+fx(i);
%     elseif(mod(i,2)==0)
%         s=s+4*fx(i);
%     else
%         s=s+2*fx(i);
%     end
% end
% I=(0.01/3)*s