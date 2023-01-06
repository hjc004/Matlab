close all;
I = imread('pears.png');%读取图像
J = rgb2gray(I); %转化成灰度图    
H=mat2gray(J); %对图像进行归一化处理
BW1 = edge(H,'roberts',0.075);%roberts算子
BW2 = edge(H,'canny',0.21);%canny算子
BW3 = edge(H,'sobel',0.058);%sobel算子
BW4 = edge(H,'prewitt',0.06);%prewitt算子
subplot(1,4,1),imshow(BW1),title('roberts算子');
subplot(1,4,2),imshow(BW2),title('canny算子');
subplot(1,4,3),imshow(BW3),title('sobel算子');
subplot(1,4,4),imshow(BW4),title('prewitt算子');