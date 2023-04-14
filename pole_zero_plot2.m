clc;
clear all;
close all;


%Pole-zero plot using the poles and zeros

b = [3 -4]; % numerator
a = [1 -3.5 1.5]; % denominator
% finding zeros and poles using roots
z = roots(b); % zeros
p = roots(a); % poles

zplane(z,p);