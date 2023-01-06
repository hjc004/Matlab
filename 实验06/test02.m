clear;
close all;
clc;
I = imread('source.tif');
I = im2double(I);
A = fft2(I); %傅里叶变换
A1 = abs(A);%求幅度谱
A2 = angle(A);%求相位谱
I1 = ifft2(A1.*exp(1i*A2));%利用幅度谱和相位谱做反变换
I2 = ifft2(A1);%仅利用幅度谱做反变换
I3 = ifft2(255*exp(1i*A2));%仅利用相位谱做反变换
figure,subplot(2,2,1),imshow(I,[]),title('原图');
       subplot(2,2,2),imshow(I1,[]),title('利用幅度谱和相位谱做反变换');
       subplot(2,2,3),imshow(I2,[]),title('仅利用幅度谱做反变换');
       subplot(2,2,4),imshow(I3,[]),title('仅利用相位谱做反变换');