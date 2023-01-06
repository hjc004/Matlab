%针对同一滤波器改变滤波器尺寸
clear
clc
f=imread('source.tif');
J1=imnoise(f,'salt & pepper');
Y1=medfilt2(J1,[3,3]);
Y2=medfilt2(J1,[7,7]);
Y3=medfilt2(J1,[11,11]);
subplot(2,3,1),imshow(f);title('原图');
subplot(2,3,2),imshow(J1);title('叠加椒盐噪声');
subplot(2,3,3),imshow(Y1);title('3x3');
subplot(2,3,4),imshow(Y2);title('7x7');
subplot(2,3,5),imshow(Y3);title('11x11');