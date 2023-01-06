clear
I = imread('cameraman.tif');
[m,n] = size(I);
h = fspecial('motion',10,45);           
g = imfilter(I,h, 'conv', 'circular');  %ģ������
 
F = fft2(I);
G = fft2(g);
H = fft2(h,m,n);
F2 = ifft2(G./H);

I2 = imread('cameraman.tif');
[m,n] = size(I2);
h2 = fspecial('motion',10,45); %����˶�ģ��
g2 = imfilter(I2,h2);   
lambda = 0.95;  
Fk = lambda * g2;
for k = 1:1000
    temp = imfilter(Fk,h2,'same', 'conv', 'circular');
    G = imsubtract(g2,temp);
    Fk = Fk + lambda * G;
end
%������ַ����õ����
figure,subplot(2,2,1),imshow(I);title('ԭͼ');
       subplot(2,2,2),imshow(g2);title('����˶�ģ����ԭͼ(�˻�ͼ��)');
       subplot(2,2,3),imshow(F2);title('��DFT��IDFT��ԭͼ��');
       subplot(2,2,4),imshow(Fk);title('�����˲������㷨��ԭͼ��');