clear
clc
a = imread('test01.jpg');
b = imread('test04.jpg');

c = b-a;
c2 = b-c;
d = imsubtract(a,b);
e = immultiply(a,b);
f = imdivide(a,b);

subplot(2,2,1);imshow(c2);title('Ïà¼ÓÍ¼Ïñ');
subplot(2,2,2);imshow(d);title('Ïà¼õÍ¼Ïñ');
subplot(2,2,3);imshow(e);title('Ïà³ËÍ¼Ïñ');
subplot(2,2,4);imshow(f);title('Ïà³ıÍ¼Ïñ');