function [y]=inp(a)
n=size(a);
sum=0;
for i=1:n(1)
    for j=1:n(2)
    sum=sum+a(i,j);
    y=sum;
    end
end
end