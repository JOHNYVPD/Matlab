close all
clear all
clc
dx=1:3;
dy=[-1 4 19];
x=[2.5];
for k=1:length(x)
for i=1:length(dx-1)
    if dx(i)<=x(k) && dx(i+1)>=x(k)
        x1=dx(i);
        x2=dx(i+1);
        y1=dy(i);
        y2=dy(i+1);
    end
end
y=(x(k)-x2)*y1/(x1-x2)+(x(k)-x1)*y2/(x2-x1);
y
end
plot(dx,dy)
hold on
plot(x,y,'o')
        