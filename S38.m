clear all
close all
clc
f=inline('cos(x)');
a=pi/6;
b=pi/2;
h=0.1;
x=a:h:b;
fx=f(x);

% syms x
% f=cos(x);
% a=pi/6;
% b=pi/2;
% h=0.1;
% x=a:h:b;
% fi=matlabFunction(f);
% fx=fi(x);
  
% f=@(x)(cos(x));
% a=pi/6;
% b=pi/2;
% h=0.1;
% x=a:h:b;
% fx=f(x);

n=length(x);
s=0;
for i=1:n
    if(i==1||i==n)
        s=s+fx(i);
    elseif(mod(i,3)==1)
        s=s+2*fx(i);
    else
        s=s+3*fx(i);
    end
end
I=(3*h/8)*s