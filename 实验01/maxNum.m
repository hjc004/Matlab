function max = maxNum(a)
    max=a(1);
    for i=1:length(a)
        if a(i)>max
            max=a(i);
        end
    end
end
        