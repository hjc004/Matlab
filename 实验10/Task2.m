close all;
I = imread('pears.png');
I = rgb2gray(I); %变成灰度图      
I=mat2gray(I); %实现图像矩阵的归一化操作
g=imnoise(I,'gaussian');%添加高斯噪声
BW1 = edge(g,'roberts',0.075);
BW2 = edge(g,'canny',0.21);
BW3 = edge(g,'sobel',0.058);
BW4 = edge(g,'prewitt',0.06);
subplot(1,4,1),imshow(BW1),title('roberts算子');
subplot(1,4,2),imshow(BW2),title('canny算子');
subplot(1,4,3),imshow(BW3),title('sobel算子');
subplot(1,4,4),imshow(BW4),title('prewitt算子');