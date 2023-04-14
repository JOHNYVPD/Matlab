clc;
clear all;
close all;

x1 = [0,1,1,1,1,1];
n1 = [-1,0,1,2,3,4];
x2 = [30,14,4,0,2,10,24];
n2 = [-3,-2,-1,0,1,2,3];

[y, y1, y2, n] = sigadd(n1, x1, n2, x2);

subplot(311)
stem(n, y1, 'Linewidth',2);
subplot(312)
stem(n,y2, 'Linewidth', 2);
subplot(313)
stem(n,y, 'Linewidth', 2);