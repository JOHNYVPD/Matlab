clear all
close all
clc
f=@(x)(x^2-3);
xlow=0;
xup=6;
tol=10^(-6);
inter=0;
while(abs(xup-xlow)>tol)
    inter=inter+1;
    xmid=(xup+xlow)/2;
    if(f(xlow)*f(xmid)>0)
        xlow=xmid;
    else
        xup=xmid;
    end
end
inter
xmid