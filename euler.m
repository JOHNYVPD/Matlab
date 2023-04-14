close all
clear all
clc
h=0.01;
t=0:h:1;
y(1)=1;
f=@(t,y)y;
for i=1:length(t)-1
    y(i+1)=y(i)+h*f(t(i),y(i));
end
plot(t,y)