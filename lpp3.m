close all
clear all
clc
dx=[0:6];
dy=[0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
xk=[2];
n=2;
[yk] = lpp(dx,dy,xk,n);
xk1=1:2:4:5;
n1=3;
[yk1] = lpp(dx,dy,xk1,n1);
xk2=1:2:4:5;
n2=6;
[yk2] = lpp(dx,dy,xk2,n2);