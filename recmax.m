function y1 = inp1(a)
if numel(a)<=1
    y1 = a;
else
    y1 = inp1(a(2:end));
    if a(1)<y1
        y1 = a(1);
    end
end
end