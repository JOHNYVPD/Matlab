clc;
clear all;
close all;

nstage = 2; % number of individual subsystems
N1 = [1 0.481199 1]; % numerator of H1(z)
N2 = [1 1.474597 1]; % numerator of H2(z)
D1 = [1 0.052921 0.831731]; % denominator of H1(z)
D2 = [1 -0.304609 1]; % denominator of H2(z)
sos = [N1 D1; N2 D2]; % system matrix
[b,a] = sos2tf(sos); % The overall system function
[c, p, k] = residuez(b,a); % partial fraction expansion
m = length(b); 
b0 = b(m)/a(m); % B0 term in the parallel realization
j = 1; 
for i = 1:nstage
    bk(j) = c(j)+c(j+1);
    bk(j+1) = -(c(j)*p(j+1)+c(j+1)*p(j));
    ak(j) = -(p(j)+p(j+1));
    ak(j+1) = p(j)*p(j+1);
    j = j+2;
end

% The loop is used to add the first order systems to make it
% second order
