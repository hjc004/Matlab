I=imread('pout.tif');
N = imhist(I);
[m,n] = size(I);
M=zeros(1,256);                         %zeros(256)����256x256����
for i=1:m
    for j=1:n
        k=I(i,j);
        M(k+1)=M(k+1)+1;                %��¼ÿ���Ҷ�ֵ��������
    end
end
figure;
subplot(131);imshow(I);title('ԭͼ��');
subplot(132);bar(M);title('ֱ��ͼ1');      %bar��������ֱ��ͼ��ΪN��ÿһ�е�ÿһ��Ԫ�ػ���һ����
subplot(133);bar(N);title('ֱ��ͼ2');
