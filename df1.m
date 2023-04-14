close all
clear all
clc
h=0.01;
x=0:h:2*pi;
y=@(x)sin(x);

% % forward
% for i=1:length(x)-1;
%     dy(i)=y(x(i+1))-y(x(i))/h;
% end
% xn=x(1:length(x)-1);

% % backword
% for i=2:length(x);
%     dy(i-1)=y(x(i))-y(x(i-1))/h;
% end
% xn=x(2:length(x));

% central
for i=2:length(x)-1;
    dy(i-1)=y(x(i+1))-y(x(i-1))/2*h;
end
xn=x(2:length(x)-1);
subplot(2,1,1)
plot(x,y(x))
subplot(2,1,2)
plot(xn,dy)