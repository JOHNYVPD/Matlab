clc;clear all;close all;

% Designing a high pass filter from an analog low pass filter
% using bilinear transform


Fs = 8200; % Sampling frequency
Ts = 1/Fs; % Sampling period

% Filter pre-warped frequency calculation
wa = 6200; % pre-warped frequency

% analog filter coefficients H(s) = 1/(1+s)
num = [1]; % numerator coefficients
den = [1 1]; % denominator coefficients

% filter transformation from low pass to high pass
[A, B] = lp2hp(num, den, wa); 
[a, b] = bilinear(A, B, Fs); % Bilinear Transformation

% Frequency response
N = 512; % FFT point number
[hz, f] = freqz(a, b, N, Fs); % computing frequency response
phi = 180*unwrap(angle(hz))/pi; % Unwarping the phase angle
subplot(211)
plot(f, abs(hz), 'linewidth', 2);
ylabel("Magnitude Response");
xlabel("Frequency(Hz)");

subplot(212)
plot(f, phi, 'linewidth', 2);
ylabel("Phase Response"); 
xlabel("Frequency(Hz)");


