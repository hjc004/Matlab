I = imread('pout.tif');
A = fspecial('average',[3,3]);
B = fspecial('average',[5,5]);
a = imfilter(I,A);
d = imfilter(I,B);
figure;
subplot(1,3,1),imshow(I),title('ԭͼ');
subplot(1,3,2),imshow(a),title('3x3');
subplot(1,3,3),imshow(d),title('5x5');