clc;
clear all;
close all;


Fs = 500; % Sampling frequency
bw = 10; % bandwidth

%% zero-calculation
Fr1 = 0; % DC frequency
Fr2 = 250; % 250Hz frequency

% angle corresponding to the zeros
theta1 = 2*pi*(Fr1/Fs);
theta2 = 2*pi*(Fr2/Fs);

z1 = exp(1j*theta1);
z2 = exp(1j*theta2);

%% pole-calculation
Fp = 125; % passband frequency
thetap = 2*pi*(Fp/Fs); % angle corresponding to the pole

r = 1-(bw/Fs)*pi; % magnitude of the pole
p1 = r*exp(1j*thetap); %first pole
p2 = r*exp(-1j*thetap); % second pole
% coefficient a, b must be real so the poles and zeros will be complex
% conjugate pairs (if any complex pole or zero exists)

%% pole-zero plot

%zplane([z1, z2]', [p1, p2]'); 

%% determine H(z) = N(z)/D(z)

num = poly([z1,z2]); % numerator vector
den = poly([p1, p2]); % denominator vector

[h, f] = freqz(num, den, 256, Fs);
figure(1)
subplot(211)
plot(f, abs(h)/max(abs(h)), 'linewidth', 2);
xlabel('Frequency(Hz)'); ylabel('Magnitude Response');
subplot(212)
plot(f, angle(h)*180/pi, 'linewidth', 2);
xlabel('Frequency(Hz)'); ylabel('Phase Response');




