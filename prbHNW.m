clc;
clear all;
close all;
Fs =5e3;
M =50;
fc =1e3;
wn= 2*pi*(fc/Fs);
a = fir1(M, wn/pi, 'high', hanning(M+1));
N = 512;
[h,f] = freqz(a, 1, N, Fs);
figure(1)
subplot(211)
plot(f,20*log10(abs(h)), 'linewidth', 2);
xlabel('frequency (Hz)');
ylabel('Magnitude (dB)');
title('Hanning window')
subplot(212)
plot(f, angle(h)*180/pi, 'linewidth', 2);
xlabel('Frequency (Hz)');
ylabel('Angle(Degree)');