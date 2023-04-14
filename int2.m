clear all
close all
clc

%  syms x;
% f=cos(x);
% a=pi/6;
% b=pi/2;
% intf=int(f,a,b)
% intfn=double(intf)

f= @(x)(cos(x))
a=pi/6;
b=pi/2;
intf=integral(f,a,b)
