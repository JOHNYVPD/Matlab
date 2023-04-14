clc;
clear all;
close all;


%pole-zero plot of X(z) with numerator given by b and 
% denominator given by a
b = [1, 2, -1]; % numerator
a = [1, -1, 0.3561]; % denominator

zplane(b,a);

