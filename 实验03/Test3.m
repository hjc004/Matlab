I=imread('pout.tif');
J=imadjust(I,[0.3 0.7],[0 1]);
figure;
subplot(2,2,1);imshow(I);title('ԭʼͼ��');
subplot(2,2,3);imhist(I);title('ԭʼͼ��ֱ��ͼ');
subplot(2,2,2);imshow(J);title('�Ҷ����Ա任ͼ��');
subplot(2,2,4);imhist(J);title('�Ҷ����Ա任ͼ��ֱ��ͼ');