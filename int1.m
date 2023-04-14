clear all
close all
clc
syms x;
f=sin(x);
df=diff(f);
intf=int(df);
t=-2*pi:0.1:2*pi;

% ft=subs(f,x,t);
% dft=subs(df,x,t);
% intft=subs(intf,x,t);
% 
% subplot(3,1,1)
% plot(t,ft)
% subplot(3,1,2)
% plot(t,dft)
% subplot(3,1,3)
% plot(t,intft)

ft=matlabFunction(f);
difft=matlabFunction(df);
intft=matlabFunction(intf);

ftn=ft(t);
difftn=difft(t);
inftn=intft(t);

subplot(3,1,1)
plot(t,ftn)
subplot(3,1,2)
plot(t,difftn)
subplot(3,1,3)
plot(t,inftn)

