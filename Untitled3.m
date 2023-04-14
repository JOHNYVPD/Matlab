close all
close all 
clc
A=input('Enter the coefficient matrix (in matrix form used in matlab):')
B=input('Enter the constant  (in matrix form used in matlab):')
[n,m]=size(A);
[j,k]=size(B);
L=0;
x=zeros(n,1);
for h=1:n
    for u=1:n-1
            for c=1:n
            val=max(abs(A(c,:)));
            A(c,:)=A(c,:)/val;
            B(c,:)=B(c,1)/val;
            end
            break; break;
    end   
end

A
B

for i=1:n-1
if (A(i,i)<0.1)&&(A(i,i)>-0.1)   
    if i<n                          
        z=zeros(n-i,1);
        for j=1:n-i
            z(j,1)=i+j;
        end
        submatrix=A(z,:);                     
        [val2 idx]=max(abs(submatrix(:,i))); 
        idx=idx+i;                         
        pivot=A(i,:);
        const=B(i,1);
        A(i,:)=A(idx,:);
        B(i,1)=B(idx,1);
        A(idx,:)=pivot;
        B(idx,1)=const;
        L=L+1;
    end
end
end
%     if (max(A(:,1))<0.0001)&&(max(A(:,1)>-0.0001))
% %     fprintf('Warning! The largest coefficient of the %.0fth pivot element for %.0fth Forward Elimination is near 0.\n',i,i);   
%     end
% end
%     factor=A(i+1:n,i)/A(i,i);
%     A(i+1:n,:)=A(i+1:n,:)-(factor*A(i,:));
%     B(i+1:n,:)=B(i+1:n,:)-(factor*B(i,:));
% end
% if L>0
%     L
% end
for i=n:-1:1;
    t=B(i,:);
    for j=n:-1:i
        t=t-(A(i,j)*x(j,:));
    end
    x(i,:)=t/A(i,i);
end
n
x(1,:)
x(2,:)
if n>2
x(3,:)
end
if n>3
    for i=4:n
        x(i,:)
    end
end
return
