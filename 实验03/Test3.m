I=imread('pout.tif');
J=imadjust(I,[0.3 0.7],[0 1]);
figure;
subplot(2,2,1);imshow(I);title('原始图像');
subplot(2,2,3);imhist(I);title('原始图像直方图');
subplot(2,2,2);imshow(J);title('灰度线性变换图像');
subplot(2,2,4);imhist(J);title('灰度线性变换图像直方图');