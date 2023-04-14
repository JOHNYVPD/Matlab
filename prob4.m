clc; 
close all; 
clear all;
Fo = 100; 
To = 1/Fo; 
Fs = 800; 
Ts = 1/Fs;
tc = 0:To/100:3*To; 
xc = 5*cos(200*pi*tc); 
ts = 0:Ts:3*To;
xs = 5*cos(200*pi*ts); 
xr=interp1(ts,xs,tc); 
subplot(211) 
plot(tc,xc,'g','Linewidth',2);%Original Signal 
hold on 
plot(tc,xr,'r','Linewidth',2); %Reconstructed Signal 
hold on 
stem(ts,xs,'b','Linewidth',2);