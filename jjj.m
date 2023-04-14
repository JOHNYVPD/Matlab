clear all
close all
clc
x=0:0.1:pi;
t=length(x);
for i=1:t
    val(i)=call_one(x(i));
end
plot(x,val);