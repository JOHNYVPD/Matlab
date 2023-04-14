clc;
clear all;
close all;
n1 = -2:2;
n2 =-3:1;
x1 = n1; %x1 = 2n1
x2 = n2; %x2 = square(n2)
[y,n] = sigmult(n1,x1,n2,x2); %calling sigmult function
subplot(3,1,1);
stem(n1,x1);
title("x1 signal");

subplot(3,1,2);
stem(n2,x2);
title("x2 signal");

subplot(3,1,3);
stem(n,y);
title("x1*x2 signal");
