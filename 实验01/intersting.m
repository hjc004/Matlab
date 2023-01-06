function n = intersting(a,n)
    while 1
        n=input('Enter n,negative quits:'); %输入n
        if n<=0
            break  %若n小于0，结束程序
        end
        a=n;
        while n>1  %n大于1时循环执行
            if rem(n,2)==0  %判断是否为偶数
                n=n/2;
            else            %判断是否为奇数
                n=3*n+1;
            end
            a=[a,n];   %重复循环
        end
        a
    end
end