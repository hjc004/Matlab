clear;
close all;
clc;
I = imread('source.tif');
I = im2double(I);
A = fft2(I); %����Ҷ�任
Ashift = fftshift(A);%�ƶ�����
A1 = abs(A);%�������
Am1 = 0.5*log10(1+A1);%Ƶ����
Am2 = 0.5*log10(1+abs(Ashift));%��Ƶ�����Ƶ��м�
A2 = angle(A);%����λ��
figure,subplot(2,2,1),imshow(I,[]),title('ԭͼ');
       subplot(2,2,2),imshow(Am1,[]),title('������');
       subplot(2,2,3),imshow(A2,[]),title('��λ��');