clear
clc
a = imread('test01.jpg');
b = imread('test04.jpg');

c = b-a;
c2 = b-c;
d = imsubtract(a,b);
e = immultiply(a,b);
f = imdivide(a,b);

subplot(2,2,1);imshow(c2);title('���ͼ��');
subplot(2,2,2);imshow(d);title('���ͼ��');
subplot(2,2,3);imshow(e);title('���ͼ��');
subplot(2,2,4);imshow(f);title('���ͼ��');