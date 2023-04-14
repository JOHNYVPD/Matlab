clc;
clear all;
close all;
n=[-2:10];
[u_n,n_un]=unit_step(0,min(n),max(n));
[u_n1,n_un1]=unit_step(3,min(n),max(n));
[u_n2,n_un2]=unit_step(10,min(n),max(n));
[u_n3,n_un3]=unit_impulse(2,min(n),max(n));
[u_n4,n_un4]=unit_impulse(-2,min(n),max(n));
x1=(3*n.*n-7*n+5).*(u_n-u_n1);
x2=(2-sin((pi*n)/2)).*(u_n-u_n2);
x3=(n.*n.*n-exp(n.^2-5)+cos((pi*n)/3)).*(u_n3+u_n4);
y=x1+x2+x3;
[ye,m]=sigfold(y,n);
ye1=0.5*(y+ye);
yo=0.5*(y-ye);
figure(1);
subplot(4,1,1)
stem(n_un,x1)
subplot(4,1,2)
stem(n_un,x2)
subplot(4,1,3)
stem(n_un,x3)
figure( 2 );
stem(n_un,y);
title("Y[n]");
figure(3);
subplot(2,1,1);
stem(m,ye1);
title("EVEN PART");
subplot(2,1,2);
stem(m,yo);
title("ODD PART");




