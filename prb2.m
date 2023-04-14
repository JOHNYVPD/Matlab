clc;
clear all;
close all;
Fs = 1e3;
TW = 50;
fp1 = 120;
fp2 = 150;
delf =TW/Fs;
M = round(3.3/delf);
fc1 = fp1-TW/2;
fc2 = fp2+TW/2;
wn =[2*pi*fc1/Fs 2*pi*fc2/Fs] ;
a = fir1(M, wn/pi,'bandpass', hamming(M+1));
N = 512;
[h,f] = freqz(a, 1, N, Fs);
figure(1)
subplot(211)
plot(f,20*log10(abs(h)));
xlabel('Frequency(Hz)');
ylabel('Magnitude(dB)');
subplot(212)
plot(f, angle(h)*180/pi);
xlabel('Frequency(Hz)');
ylabel('Angle(Degree)');