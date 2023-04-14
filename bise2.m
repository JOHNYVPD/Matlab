clear all 
close all
clc
f=@(x)(x^2-3);
xup=[6 -6];
xlow=[0 0];
tol=10^(-6);
inter=[0 0];
n=length(xup);
for i=1:n
    while(abs(xup(i)-xlow(i))>tol)
        inter(i)=inter(i)+1;
        xmid(i)=(xup(i)+xlow(i))/2;
        if(f(xlow(i))*f(xmid(i))>0)
            xlow(i)=xmid(i);
        else 
            xup(i)=xmid(i);
        end
    end
end
xmid
inter