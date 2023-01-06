A = imread('pout.tif');
[m,n] = size(A);
B = zeros(size(A));
I = m*n;
M = zeros(1,256);
N = zeros(1,256);
A = double(A);
for i = 1:m                     %统计每个灰度值的个数
    for j = 1:n
        c=A(i,j);
        M(c+1)=M(c+1)+1;
    end
end

M=M./I;

for k=1:256                     %M:归一化直方图
    for j=1:k
        N(k)=N(k)+M(j); 
    end
end

for k=1:256                     %扩展取整，计算灰度新值
	N(k)=floor(255*N(k)+0.5);
end

for i=1:m
    for j=1:n
        B(i,j)=N(A(i,j)+1);
    end
end

A=uint8(A);
B=uint8(B);
subplot(2,2,1),imshow(A);title('原图像');
subplot(2,2,2),imhist(A);title('原图像直方图');
subplot(2,2,3),imshow(B);title('均衡化图像');
subplot(2,2,4),imhist(B);title('均衡化图像直方图');

