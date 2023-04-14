function low = A(C)
L=length(C);
for i=1:L(1)
    if C(i)<=C(i+1)
        B(i)=A(i);
    end
end
end
