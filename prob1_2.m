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
m = 1;
[k, c] = dtfs_analysis(m, n, x);


% Reconstruction of signal from Fourier coefficients
t_remax = T;
t_re = -t_remax:dt:t_remax;
n_re = t_re/dt;
x_re = zeros(1, length(n_re));
for i1 = 1:length(k)
for i2 = 1:length(x_re)
x_re(i2) = x_re(i2)+c(i1)*exp(1i*2*pi*k(i1)*n_re(i2)/N);
end
end
figure(4)
subplot(211)
stem(n_re, real(x_re), 'Linewidth', 2); xlabel('n');
title('Reconstructed Signal');
subplot(212)
plot(t_re, real(x_re), 'Linewidth', 2); ylabel('t');
title('Reconstructed Signal');