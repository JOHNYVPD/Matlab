close all
clear all
clc
dx=301:2:319;
dy=[40 43 40 37 42 36 42 41 37 37];
x=[2.5]
n=length(dx);
sum=0;
for k=1:length(x)
for i=1:n
    prob=1;
    for j=1:n
        if i~=j
            prob=prob.*(x(k)-dx(j))/(dx(i)-dx(j));
        end
    end
end
    sum=sum+prob.*dy(i);
end
y(k)=sum; 
y(k)
plot(dx,dy)
hold on
plot(x,y,'o')
        