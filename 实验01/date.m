function days = date(y,m,d)
    days=0;
    A=[31,28,31,30,31,30,31,31,30,31,30,31];
    if mod(y,4)==0
        A(2)=29;
    end
    for i=1:m-1
        days=days+A(i);
    end
end