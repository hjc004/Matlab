clear
clc
I = imread('cameraman.tif');
I = im2double(I);   %转换图像矩阵为双精度
T = dctmtx(8);    %产生二维DCT变换矩阵
B = blkproc(I,[8 8],'P1*x*P2',T,T');
mask1 = [1 1 1 1 0 0 0 0
         1 1 1 0 0 0 0 0
         1 1 0 0 0 0 0 0
         1 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0];   %二值掩膜，用来压缩DCT系数
mask2 = [1 1 1 1 0 0 0 0
         1 1 1 0 0 0 0 0
         1 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0];
B2 = blkproc(B,[8 8],'P1.*x',mask1);    %只保留DCT变换的10个系数
B3 = blkproc(B,[8 8],'P1.*x',mask2);
I2 = blkproc(B2,[8 8],'P1*x*P2',T',T);   %重构图像
I3 = blkproc(B3,[8 8],'P1*x*P2',T',T);
figure,subplot(1,2,1),imshow(I2);
       subplot(1,2,2),imshow(I3);