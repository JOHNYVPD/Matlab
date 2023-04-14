close all
clear all
clc
f=50;
A=20;
n=5;
T=1/f;
t=linspace(0,n*T,140);
v1=A*sin(2*pi*f*t);
v2=A*cos(2*pi*f*t);
subplot(2,2,1),plot(t,v1);
subplot(2,2,2),plot(t,v2);
subplot(2,2,4),plot(t,v2.^2);