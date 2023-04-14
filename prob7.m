clear all
close all
clc
% Plot (x1,x2) for shai o = [0°, ±30°, ± 45°, ± 60°, ± 90°] and show
% them in 5 subplots. Where the same value  shai o should be in the
% same plot.
a=1;  % Amplitude of this singnl for x1
b=1;  % Amplitude of this singnl for x2
o=0;  %shai is [0°, ±30°, ± 45°, ± 60°, ± 90°] degree
o1=[-30,30];
o2=[-45,45];
o3=[-60,60];
o4=[-90,90];
f=1;   % given signl freuency is 1hz
t=0:0.0001:5;  %defining time variable 
X1=a*cos(2*pi*f*t); %equation
X2=b*cos(2*pi*f*t+o);
subplot(5,1,1)
plot(X1,X2)
title("for o degree")
for i=1:length(o1)  %using for loop
X3=b*cos(2*pi*f*t+o1(i));
subplot(5,1,2)
plot(X1,X3)
title("for 30 degree")
end
for i=1:length(o2)
X4=b*cos(2*pi*f*t+o2(i));
subplot(5,1,3)
plot(X1,X4)
title("for 45 degree")
end
for i=1:length(o3)
X5=b*cos(2*pi*f*t+o3(i));
subplot(5,1,4)
plot(X1,X5)
title("for 60 degree")
end
for i=1:length(o4)
X6=b*cos(2*pi*f*t+o4(i));
subplot(5,1,5)
plot(X1,X6)
title("for 90 degree")
end




