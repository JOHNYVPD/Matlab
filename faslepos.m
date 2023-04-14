clear all
close all
clc
f=@(x)(x^2-3);
xlow=0;
xup=6;
tol=10^(-6);
inter=0;
xf=xup-((xlow-xup)/(f(xlow)-f(xup)))*f(xup);
while abs(f(xf))>tol
    inter=inter+1;
    if((f(xlow)*f(xf))>0)
        xlow=xf;
    else
        xup=xf;
    end
    xf=xup-((xlow-xup)/(f(xlow)-f(xup)))*f(xup);
end
xf
inter