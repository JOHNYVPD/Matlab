clear all
close all
clc
f=@(x)(x^2-3);
x2=6;
y2=f(x2);
x3=3;
y3=f(x3);
tol=0.001;
inter=0;
while abs(y2)>tol
    inter=inter+1;
    x1=x3-((x2-x3)/(y2-y3))*y2;
    y1=f(x1);
    x2=x3;
    y2=y3;
    x3=x1;
    y3=y1;
end
x3
inter