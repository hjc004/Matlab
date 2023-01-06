I=imread('pout.tif');
N = imhist(I);
[m,n] = size(I);
M=zeros(1,256);                         %zeros(256)生成256x256矩阵
for i=1:m
    for j=1:n
        k=I(i,j);
        M(k+1)=M(k+1)+1;                %记录每个灰度值的像素数
    end
end
figure;
subplot(131);imshow(I);title('原图像');
subplot(132);bar(M);title('直方图1');      %bar函数绘制直方图，为N中每一行的每一个元素绘制一个条
subplot(133);bar(N);title('直方图2');
