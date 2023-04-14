close all
clear all
clc
dx=301:2:319;
dy=[40 43 40 37 42 36 42 41 37 37];
x=[307 .5 313];
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
plot(x,y,'*')
x=[307 2 315];
for k=1:length(x)
for i=1:length(dx-1)
    if dx(i)<=x(k) && dx(i+1)>=x(k)
        x1=dx(i);
        x2=dx(i+1);
        y1=dy(i);
        y2=dy(i+1);
    end
end
y2=(x(k)-x2)*y1/(x1-x2)+(x(k)-x1)*y2/(x2-x1);
y2
end
plot(dx,dy)
hold on
plot(x,y2,'*')
        