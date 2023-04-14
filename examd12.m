
close all;
clear all;
clc;

t=-5:5; % index vector of original signal


x=5*cos(100*pi*t+30)+7*sin(50*pi*t+45)-4*cos(100*pi*t+60).*cos(100*pi*t+60); % original samples
subplot(311),
stem(t,x, 'Linewidth', 2);
title('Original Signal')

%% Down-sampling
M = 2;
[xdown, ndown] = downsampling(x,t,M);
subplot(312)
stem(ndown, xdown, 'Linewidth', 2);
title(['Down-sampled Signal by ',num2str(M)]);

%% Down-sampling
M1 = 6;
[xdown1, ndown1] = downsampling(x,t,M1);
subplot(313)
stem(ndown1, xdown1, 'Linewidth', 2);
title(['Down-sampled Signal by ',num2str(M1)]);