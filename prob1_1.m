clear all;
close all;
clc;
Fs = 100000;
dt = 1/Fs;
% Generating rectangular pulse
T = 1e-3;
D = .1;
PW = D*T;
f = 1/T;
t = -T/2:dt:T/2;
n = t/dt;
L = PW/dt;
x = zeros(1,length(t));
x(find(abs(n)<=L/2))=1.1;

% Fourier Series Analysis
N = length(x);
m = 3;
[k, c] = dtfs_analysis(m, n, x);
figure (1)
subplot(211)
stem(k, abs(c), 'Linewidth', 2);
title('Fourier Series Coefficients');
ylabel('|Ck|'); xlabel('k');
subplot(212)
stem(k, angle(c)*180/pi, 'Linewidth', 2);
ylabel('Angle Ck (degrees)'); xlabel('k');
