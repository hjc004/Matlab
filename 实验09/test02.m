I3 = imread('cameraman.tif');   
[m,n] = size(I3);
%������-ά���˲�
%����˶�ģ��
PSF = fspecial('motion',20,20);
g3 = imfilter(I3,PSF, 'conv', 'circular');
noNSR = 0;
%��ά���˲���ԭģ��ͼ��
F3 = deconvwnr(g3,PSF,noNSR);
%������-ά���˲�
%��˹����
I4 = imnoise(I3,'gaussian',0,0.05);
g4 = imfilter(I4,PSF, 'conv', 'circular');
Sn = abs(fft2(I4)).^2;
nA = sum(Sn(:))/numel(I4);
Sf = abs(fft2(I3)).^2;
fA = sum(Sf(:))/numel(I3);
R = nA / fA;
NCORR = fftshift(real(ifft2(Sn)));
ICORR = fftshift(real(ifft2(Sf)));
%��ά���˲���ԭģ���Ĵ���ͼ��
F4 = deconvwnr(g4,PSF,NCORR,ICORR);
%������-���˲�
H = fft2(PSF,m,n);
G = fft2(g3);
HI = zeros(m,n);
D0 = 0.95;      
for i = 1:m
    for j = 1:n
        if(H(i,j)<D0)
            HI(i,j) = 1;
        else
        HI(i,j) = 1./H(i,j);
        end
    end
end
f5 = G.*HI; 
F5 = real(ifft2(f5));      
%������-���˲�
H2 = fft2(PSF,m,n);
G2 = fft2(g4);
HI = zeros(m,n);
D0 = 0.95;    
for i = 1:m
    for j = 1:n
        if(H2(i,j)<D0)
            HI(i,j) = 1;
        else
            HI(i,j) = 1./H2(i,j);
        end
    end
end
f6 = G2.*HI; 
F6 = real(ifft2(f6));   
figure,subplot(2,4,1),imshow(I3);
       subplot(2,4,2),imshow(g3);
       subplot(2,4,3),imshow(g4);
       subplot(2,4,5),imshow(F3);      
       subplot(2,4,6),imshow(F4,[]);
       subplot(2,4,7),imshow(F5,[]);
       subplot(2,4,8),imshow(F6,[]);