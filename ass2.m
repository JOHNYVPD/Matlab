clc;
clear all;
close all;

% Plot the magnitude and phase responses
fs = 8200;% Sampling rate (Hz)
[B, A] = lp2lp([1],[1 1],6200);
[b, a] = bilinear(B, A, fs);
b =[0.274 0.274]; % numerator coefficients of the digital filter from MATLAB
a = [1 -0.451];  % denominator coefficients of the digital filter from MATLAB
[hz, f] = freqz([0.274 0.274],[1 -0.451],512,fs);%the frequency response
phi = 180*unwrap(angle(hz))/pi;
subplot(2,1,1)
plot(f, abs(hz));
xlabel("Frequency (Hz)");
ylabel("Magnitude Response");

subplot(2,1,2)
plot(f, phi);
xlabel("Frequency (Hz)"); 
ylabel("Phase (degrees)");
