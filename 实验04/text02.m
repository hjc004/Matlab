%���ӽ�������
clear
clc
f=imread('source.tif');
J1=imnoise(f,'salt & pepper');
H1=ones(3,3)/9;
Y1=imfilter(J1,H1);
Y2=medfilt2(J1,[5,5]);
subplot(2,2,1),imshow(f);title('ԭͼ');
subplot(2,2,2),imshow(J1);title('���ӽ�������');
subplot(2,2,3),imshow(Y1);title('��ֵ�˲�');
subplot(2,2,4),imshow(Y2);title('��ֵ�˲�');