close all
clear all
clc
syms x;
fs=x^2-3;
f=matlabFunction(fs);
fd=matlabFunction(diff(fs));
xk=6;
tol=0.0001;
inter=0;
while abs(f(xk))>tol
    inter=inter+1;
    xk1=xk-(f(xk)/fd(xk));
    xk=xk1;
end
xk
inter