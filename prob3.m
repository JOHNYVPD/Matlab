clc 
clear all 
close all 
fo=15; 
to=1/fo; 
a=0:to/100:2; 
b=1/2*sin(14*pi*a)+1/3*sin(18*pi*a)+1/5*sin(24*a)+1/7*sin(30*pi*a); 
fs1=5*fo; 
fs2=1.5*fo;
ts1=1/fs1; 
ts2=1/fs2; 
ts1= 0:ts1:2; 
xs1= 1/2*sin(14*pi*ts1)+1/3*sin(18*pi*ts1)+1/5*sin(24*ts1)+1/7*sin(30*pi*ts1); 
ts2=0:ts2:2; 
xs2=1/2*sin(14*pi*ts2)+1/3*sin(18*pi*ts2)+1/5*sin(24*ts2)+1/7*sin(30*pi*ts2);
N1=length(ts1); 
N2=length(ts2); 
xr1 = zeros(1, length(a)); 
sinc_fun1 = zeros(N1, length(a));
for t = 1:length(a) 
    for n = 0:N1-1 
        xr1(t) = xr1(t) + xs1(n+1)*sin(pi*(a(t)-n*ts1)/ts1)/(pi*(a(t)- n*ts1)/ts1); 
    end
end
xr2 = zeros(1, length(a)); 
sinc_fun2 = zeros(N2, length(a));
for t = 1:length(a) 
    for n = 0:N2-1 
        xr2(t) = xr2(t) + xs2(n+1)*sin(pi*(a(t)-n*ts2)/ts2)/(pi*(a(t)- n*ts2)/ts2); 
    end
end
subplot(311)
plot(a,b,'r'); 
hold on 
stem(ts1,xs1,'b'); 
hold on 
plot(a,xr1,'g'); 
title('Reconstructed at fs=5*fo'); 
subplot(312) 
plot(a,b,'r'); 
hold on 
stem(ts2,xs2,'b');
hold on 
plot(a,xr2,'g'); 
title('Reconstructed at fs=1.5*fo'); 
subplot(313) 
plot(ts2,xs2); 
title('Time domain expression of Alias Signal');