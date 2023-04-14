clc;
clear all;
close all;
n=[-4:5];
n1=3;
x=[1,1,2,3,5,8,13,21,34,55];
% % frist folding the signal then shifting
[y,m] = sigfold(x,n);
[y1,m1] = sigshift(y,m,n1);
% % frist shifting the signal then folding
[y2,m2] = sigshift(x,n,n1);
[y3,m3] = sigfold(y2,m2);

subplot(3,2,1);
stem(n,x);
title("x[n]");
subplot(3,2,2);
stem(m,y);
title("x[-n]");
subplot(3,2,4);
stem(m1,y1);
title("x[-n-3]");
subplot(3,2,3);
stem(m2,y2);
title("x[n-3]");
subplot(3,2,5);
stem(m3,y3);
title("x[-n-3]");
