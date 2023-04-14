clear all;
close all;
clc;
Fcl = 200;
Fch=300;
Fs = 150;
Ts = 1/Fs;
w1 = 2*pi*Fcl;
w2=2*pi*Fch;
w3 = 2/Ts*tan(w1*Ts/2);
w4 = 2/Ts*tan(w2*Ts/2);
w5=sqrt(w3*w4);
w=w4-w3;
num = [1];
den = [1 1];
[A, B] = lp2bp(num, den, w5,w);
[a, b] = bilinear(A, B, Fs);
N = 512;
[hz, f] = freqz(a, b, N, Fs);
phi = 180*unwrap(angle(hz))/pi;
subplot(211)
plot(f, abs(hz), 'linewidth', 2);
ylabel('Magnitude Response');
xlabel('Frequency(Hz)');
subplot(212)
plot(f, phi, 'linewidth', 2);
ylabel('Phase Response');
xlabel('Frequency(Hz)');