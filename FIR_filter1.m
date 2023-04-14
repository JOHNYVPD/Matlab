clc;
clear all;
close all;

Fs = 8e3; % sampling frequency
TW = 0.5e3; % Transition width
PBE = 1.5e3; % Passband Edge frequency

delf = TW/Fs; % normalized transition width
M = round(5.5/delf); % Filter order for Blackman filter
corner = PBE+TW/2; % corner frequency = Passband_edge+transition_width/2
wn = 2*pi*corner/Fs; % converting wn to 2*pi range
a = fir1(M, wn/pi, 'low', blackman(M+1));
% M = order of the filter
% wn = passband edge frequency
% 'low' = lowpass filter
% blackman (M+1) = M+1 length blackman window 
% a = filter coefficients
N = 512; % number of points for calculating frequency response
[h,f] = freqz(a, 1, N, Fs);
figure(1)
subplot(211)
%plot(f, abs(h), 'linewidth', 2);
plot(f, 20*log10(abs(h)), 'linewidth', 2);
xlabel("Frequency (Hz)");
ylabel("Magnitude (dB)");
subplot(212)
plot(f, unwrap(angle(h)), 'linewidth', 2);
xlabel("Frequency (Hz)");
ylabel("Angle (Degree)");

