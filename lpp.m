function [yk] = lpp(dx,dy,xk,n);
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
yk=polyval(y_exp,xk)
plot(dx,dy)
hold on
plot(xk,yk,'o')
end

