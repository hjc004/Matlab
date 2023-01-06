clear;
close all;
clc;
I = imread('source.tif');
I = im2double(I);
A = fft2(I); %傅里叶变换
Ashift = fftshift(A);%移动中心
A1 = abs(A);%求幅度谱
Am1 = 0.5*log10(1+A1);%频度谱
Am2 = 0.5*log10(1+abs(Ashift));%把频度谱移到中间
A2 = angle(A);%求相位谱
figure,subplot(2,2,1),imshow(I,[]),title('原图');
       subplot(2,2,2),imshow(Am1,[]),title('幅度谱');
       subplot(2,2,3),imshow(A2,[]),title('相位谱');