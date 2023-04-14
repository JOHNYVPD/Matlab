close all
clear all
clc
dataX=301:2:319
dataY=[40 43 40 37 42 36 42 41 37 37]
x=[307:1.5:313]
for k=length(x)
    sum=0
for i=1:length(dataX)
    prod=1
    for j=1:length(dataX)
        if i~=j 
    prod=prod.*((x(k)-dataX(j))/(dataX(i)-dataX(j)))
    end
end
sum=sum+prod.*dataY(i)
end
y1(k)=sum
end
a=[307:2:315]
for k=length(a)
    sum=0
for i=1:length(dataX)
    prod=1
    for j=1:length(dataX)
        if i~=j 
    prod=prod.*((a(k)-dataX(j))/(dataX(i)-dataX(j)))
    end
end
sum=sum+prod.*dataY(i)
end
y2(k)=sum
end
plot(dataX,dataY)
hold on
plot(a,y2,'o')
hold on
plot(x,y1,'*')
plot(x,y,'o')