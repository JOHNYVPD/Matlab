close all
clear all
clc
% eqn='Dy=y';
% init='y(0)=1';

eqn='Dy+0.5*y=20*cos(2*t)';
init='y(0)=0';
y=dsolve(eqn,init);
ym=matlabFunction(y);
t=0:0.01:10;
plot(t,ym(t))