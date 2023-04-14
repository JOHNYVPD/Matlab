clear all
close all
clc
% % Plot x1(t) and x2(t) for a = b = 1 and o = 90° and t =
% % 0: 0.0001: 5 in the same figure. Plot (x1,x2) in this case

a=1;  % Amplitude of this singnl for x1
b=1;   % Amplitude of this singnl for x2
o=90;  %shai is 90 degree
f=1;  % % given signl freuency is 1hz
t=0:0.0001:5;  %defining time variable  
% Suppose you’re given two parametric equation of two simple harmonic
% oscillators
X1=a*cos(2*pi*f*t);  
X2=b*cos(2*pi*f*t+o);
subplot(2,1,1),plot(t,X1,'r');
hold on;
plot(t,X2,'b');
subplot(2,1,2),plot(X1,X2,'b');