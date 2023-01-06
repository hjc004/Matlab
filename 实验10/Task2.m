close all;
I = imread('pears.png');
I = rgb2gray(I); %��ɻҶ�ͼ      
I=mat2gray(I); %ʵ��ͼ�����Ĺ�һ������
g=imnoise(I,'gaussian');%��Ӹ�˹����
BW1 = edge(g,'roberts',0.075);
BW2 = edge(g,'canny',0.21);
BW3 = edge(g,'sobel',0.058);
BW4 = edge(g,'prewitt',0.06);
subplot(1,4,1),imshow(BW1),title('roberts����');
subplot(1,4,2),imshow(BW2),title('canny����');
subplot(1,4,3),imshow(BW3),title('sobel����');
subplot(1,4,4),imshow(BW4),title('prewitt����');