close all
clear all
clc
h=0.001;
t=0:h:2*pi;
y=@(t)(2*t.^4-10*t.^2+13*t);
for i=2:length(t)-1;
    dy(i-1)=y(t(i+1))-y(t(i-1))/2*h;
end
xn=t(2:length(t)-1);
subplot(2,1,1)
plot(t,y(t))
subplot(2,1,2)
plot(xn,dy)