clc;
clear all;
close all;
% % Sample Problem 2: Generate a sinusoidal signal with 10 kHz and show it for 10ms.
% % Assume amplitude values and necessary data.

t=-0.005:0.000025:0.005; %defining time variable
f=10000;   % % given signl freuency is 10khz
A=10;   % Amplitude of this singnl
X1=A*sin(2*pi*f*t);  % a sinusoidal signal euation
X2=A*cos(2*pi*f*t);
X3=A*sind(2*pi*f*t);
X4=A*cosd(2*pi*f*t);

subplot(4,1,1)  % it will plot the signal in the to
plot(t,X1)
xlabel("time(ms)")
ylabel("amplitude(v)")
title("Sin Function")

subplot(4,1,2)
plot(t,X2)
xlabel("time(ms)")
ylabel("amplitude(v)")
title("cos Function")

subplot(4,1,3)
plot(t,X3)
xlabel("time(ms)")
ylabel("amplitude(v)")
title("Sind Function")

subplot(4,1,4)
plot(t,X4)
xlabel("time(ms)")
ylabel("amplitude(v)")
title("cosd Function")
