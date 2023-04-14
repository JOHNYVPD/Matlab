clc;
clear all;
close all;
% Plot the magnitude responses jH(s)j and jH(z)j
% For the Laplace transfer function H(s)
f = 0:0.1:4100; %Frequency range and sampling interval
w = 2*pi*f; %Frequency range in rad/sec
hs = freqs([6200], [1 6200],w); % Analog frequency response
phis = 180*angle(hs)/pi;
% For the z-transfer function H(z)
hz = freqz([0.756],[1 -0.469],length(w)); % Digital frequency response
hzscale = freqz([0.531],[1 -0:469],length(w)); % Scaled digital mag. response
phiz = 180*angle(hz)/pi;
%Plot magnitude and phase responses.
subplot(221)
plot(f,abs(hs));
xlabel("Frequency (Hz)");
ylabel("Mag. Responses");
subplot(222)
plot(f,abs(hz));
xlabel("Frequency (Hz)");
ylabel("Mag. Responses");

subplot(223) 
plot(f,phis);
xlabel("Frequency (Hz)");
ylabel("Phases (deg.)");

subplot(224) 
plot(f, phiz, "k-");
xlabel("Frequency (Hz)");
ylabel("Phases (deg.)");