clc;
clear all;
close all;
a=[32,56,44,16,2];
b=[-12,18,-15,3,3];
figure(1);
zplane(a,b);
figure(2);
freqz(a,b,256,512);

