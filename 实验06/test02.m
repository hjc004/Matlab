clear;
close all;
clc;
I = imread('source.tif');
I = im2double(I);
A = fft2(I); %����Ҷ�任
A1 = abs(A);%�������
A2 = angle(A);%����λ��
I1 = ifft2(A1.*exp(1i*A2));%���÷����׺���λ�������任
I2 = ifft2(A1);%�����÷����������任
I3 = ifft2(255*exp(1i*A2));%��������λ�������任
figure,subplot(2,2,1),imshow(I,[]),title('ԭͼ');
       subplot(2,2,2),imshow(I1,[]),title('���÷����׺���λ�������任');
       subplot(2,2,3),imshow(I2,[]),title('�����÷����������任');
       subplot(2,2,4),imshow(I3,[]),title('��������λ�������任');