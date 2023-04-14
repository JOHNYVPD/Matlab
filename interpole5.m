close all
clear all
clc
dx=[0:6];
dy=[0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
x=['user define the input'];
n=['user define the input'];
sum=0;
for i=1:n
    prod=1;
    for j=1:n
        if i~=j
            prob=conv(prod,(poly(dx(j))/(dx(i)-dx(j))));
        end
    end
    sum=sum+conv(prod,dy(i));
end
y_exp=sum;
y=polyval(y_exp,x)
plot(dx,dy)
hold on
plot(x,y,'o')
        