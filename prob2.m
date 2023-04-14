clc;
clear all;
close all;
a=[-1,2,-2,1];
b=[-0.1,0.8,-1.7,1];
[z,x,y]=tf2zp(a,b);
zplane(a,b);