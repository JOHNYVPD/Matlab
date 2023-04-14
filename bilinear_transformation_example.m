clc;
clear all;
close all;

% Designing a high pass filter from an analog low pass filter
% using bilinear transform

Fc = 30; % Cut-off frequency
Fs = 150; % Sampling frequency
Ts = 1/Fs; % Sampling period

% Filter pre-warped frequency calculation
wd = 2*pi*Fc; % Digital frequency
wa = 2/Ts*tan(wd*Ts/2); % pre-warped frequency

% analog filter coefficients H(s) = 1/(1+s)
num = [1]; % numerator coefficients
den = [1 1]; % denominator coefficients

% filter transformation from low pass to high pass
[A, B] = lp2lp(num, den, wa); 
[a, b] = bilinear(A, B, Fs); % Bilinear Transformation

% Frequency response
N = 512; % FFT point number
[hz, f] = freqz(a, b, N, Fs); % computing frequency response
phi = 180*unwrap(angle(hz))/pi; % Unwarping the phase angle
subplot(211)
plot(f, abs(hz), 'linewidth', 2);
ylabel("Magnitude Response");xlabel("Frequency(Hz)");
subplot(212)
plot(f, phi, 'linewidth', 2);
ylabel("Phase Response"); xlabel("Frequency(Hz)");


