close all;
I = imread('pears.png');%��ȡͼ��
J = rgb2gray(I); %ת���ɻҶ�ͼ    
H=mat2gray(J); %��ͼ����й�һ������
BW1 = edge(H,'roberts',0.075);%roberts����
BW2 = edge(H,'canny',0.21);%canny����
BW3 = edge(H,'sobel',0.058);%sobel����
BW4 = edge(H,'prewitt',0.06);%prewitt����
subplot(1,4,1),imshow(BW1),title('roberts����');
subplot(1,4,2),imshow(BW2),title('canny����');
subplot(1,4,3),imshow(BW3),title('sobel����');
subplot(1,4,4),imshow(BW4),title('prewitt����');