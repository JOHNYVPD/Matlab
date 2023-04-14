function [ F ]=fibonacci( n )
F(1)=1;
F(2)=1;
F(3)=2;
for i=4:n
   F(i)=F(i-1)+F(i-2);
   
end
end