clear
clc
I = imread('cameraman.tif');
I = im2double(I);   %ת��ͼ�����Ϊ˫����
T = dctmtx(8);    %������άDCT�任����
B = blkproc(I,[8 8],'P1*x*P2',T,T');
mask1 = [1 1 1 1 0 0 0 0
         1 1 1 0 0 0 0 0
         1 1 0 0 0 0 0 0
         1 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0];   %��ֵ��Ĥ������ѹ��DCTϵ��
mask2 = [1 1 1 1 0 0 0 0
         1 1 1 0 0 0 0 0
         1 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0
         0 0 0 0 0 0 0 0];
B2 = blkproc(B,[8 8],'P1.*x',mask1);    %ֻ����DCT�任��10��ϵ��
B3 = blkproc(B,[8 8],'P1.*x',mask2);
I2 = blkproc(B2,[8 8],'P1*x*P2',T',T);   %�ع�ͼ��
I3 = blkproc(B3,[8 8],'P1*x*P2',T',T);
figure,subplot(1,2,1),imshow(I2);
       subplot(1,2,2),imshow(I3);