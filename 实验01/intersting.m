function n = intersting(a,n)
    while 1
        n=input('Enter n,negative quits:'); %����n
        if n<=0
            break  %��nС��0����������
        end
        a=n;
        while n>1  %n����1ʱѭ��ִ��
            if rem(n,2)==0  %�ж��Ƿ�Ϊż��
                n=n/2;
            else            %�ж��Ƿ�Ϊ����
                n=3*n+1;
            end
            a=[a,n];   %�ظ�ѭ��
        end
        a
    end
end