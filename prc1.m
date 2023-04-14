clc;
clear all;
close all;
n=[-3:8];
n01=0;
n02=5;
[x1,m1]=unit_step(n01,min(n),max(n));
[x2,m2]=unit_step(n02,min(n),max(n));
x3=3.*n.*n;
x5=(x1-x2);
y=x5+x3;
subplot(4,1,1)
stem(m1,x1)
subplot(4,1,2)
stem(m1,x2)
subplot(4,1,3)
stem(m1,x5)
subplot(4,1,4)
stem(m1,y)