close all
clear all
clc
dx=1:3;
dy=[-1 4 19];
x=2.5;
n=length(dx);
sum=0;
for i=1:n
    prob=1;
    for j=1:n
        if i~=j
            prob=prob.*(x-dx(j))/(dx(i)-dx(j));
        end
    end
    sum=sum+prob.*dy(i);
end
y=sum;
y
plot(dx,dy)
hold on
plot(x,y,'o')
        