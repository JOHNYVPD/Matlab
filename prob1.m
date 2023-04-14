clc 
clear all
close all
fo=75; 
to=1/fo; 
fs1=4*fo; 
ts1=1/fs1; 
fs2=2*fo; 
ts2=1/fs2; 
fs3=fo; 
ts3=1/fs3;
t=0:to/100:3*to; 
xc=10*cos(120*pi*t)+5*sin(100*pi*t+30)+4*sin(150*pi*t+45); 
ts1=0:ts1:3*to; 
ts2=0:ts2:3*to;
ts3=0:ts3:3*to; 
xs1=10*cos(120*pi*ts1)+5*sin(100*pi*ts1+30)+4*sin(150*pi*ts1+45); 
xs2=10*cos(120*pi*ts2)+5*sin(100*pi*ts2+30)+4*sin(150*pi*ts2+45); 
xs3=10*cos(120*pi*ts3)+5*sin(100*pi*ts3+30)+4*sin(150*pi*ts3+45); 
subplot(411) 
plot(t,xc); 
title('Original Signal'); 
subplot(412)
plot(t,xc); 
hold on 
stem(ts1,xs1); 
title('fs=4*fo'); 
subplot(413) 
plot(t,xc); 
hold on 
stem(ts2,xs2);
title('fs=2*fo'); 
subplot(414)
plot(t,xc); 
hold on 
stem(ts3,xs3); 
title('fs=fo');

