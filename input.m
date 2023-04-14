function [B]=input(A)
n=size(A);
for i=1:n(1)
    for j=1:n(2)
        if A(i,j)>=0
            B(i,j)=1;
        elseif A(i,j)<0
           B(i,j)=0; 
        else B(i,j)=A(i,j);
        end
    end
end
end