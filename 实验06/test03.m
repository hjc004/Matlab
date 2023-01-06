clear;
close all;
clc;
I = imread('source.tif');
A = fft2(I); %傅里叶变换
Aph = angle(A);%求相位谱
K = imread('pout.tif');
J = im2double(K);
B = fft2(J);
Bshift = fftshift(B);
Bm = abs(B);
Bm1 = 0.5*log10(1+Bm);
Bm2 = 0.5*log10(1+abs(Bshift));
Bph = angle(B);
J2 = ifft2(255.*exp(1i*Bph));%source幅度谱和pout相位谱
J3 = ifft2(255.*exp(1i*Aph));%pout幅度谱和source相位谱
figure,subplot(2,2,1),imshow(I,[]),title('SOURCE');
       subplot(2,2,2),imshow(K,[]),title('POUT');
       subplot(2,2,3),imshow(J2,[]),title('source幅度谱和pout相位谱');
       subplot(2,2,4),imshow(J3,[]),title('pout幅度谱和source相位谱');