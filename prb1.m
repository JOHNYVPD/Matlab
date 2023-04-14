clear all;
close all;
clc;
fs = 500;
bw = 10;
fr1 = 50;
fr2 = -50;
th1 = 2*pi*(fr1/fs);
th2 = 2*pi*(fr2/fs);
z1 = exp(1j*th1);
z2 = exp(1j*th2);
r = 1-(bw/fs)*pi;
p1 = r*z1;
p2 = r*z2;
zplane([z1, z2]' ,[p1, p2]')
num = poly([z1,z2]);
den = poly([p1,p2]);
figure(1)
freqz(num, den, 256, fs)
Fo = 100;
To = 1/Fo;
Fs = 500;
Ts = 1/Fs;
t1 = 0:Ts:3*To;
xs = 2*cos(60*pi*t1)+cos(100*pi*t1);
figure(2)
title('sampled signal')
stem(t1, xs, 'Linewidth', 2);
ff = filter(num,den,xs);
figure(3)
stem(ff)
title('filter output')