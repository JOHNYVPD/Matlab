 clc 
 clear all 
 close all 
 fo=125; 
 to=1/fo;  
 n= -5:to:5; 
 xn = 10*cos(250*pi*n+60)+5*sin(200*pi*n+75); 
 ns = -10:10;
 xs = 10*cos(250*pi*ns+60)+5*sin(200*pi*ns+75); 
 L=3; 
 [xup,nup]=upsampling(xs,ns,L);
 M=4;
 [xdown,ndown]=downsampling(xs,ns,M); 
 subplot(411) 
 plot(n,xn); 
 hold on 
 stem (n,xn);
 title('Original and Sampled Signal'); 
 subplot(412)
 stem(ns,xs); 
 title('Discrete Signal');
 subplot(413) 
 stem(nup,xup); 
 title('Upsampled Signal'); 
 subplot(414)
 stem(ndown,xdown); 
 title('Downsampled Signal/Final Output');
 
 