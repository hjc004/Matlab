clear
clc
A = imread('cameraman.tif');
[m,n] = size(A);
A2 = A;
for i=1:m
    for j=1:n
        A2(i,j)=A2(i,j)+20*sin(20*i)+20*sin(20*j);
    end
end
F = fft2(A2); %DFT
F2 = abs(F); %求幅度谱
h1=log(fftshift(F2)+1);
fftshift(F2);
F2ph = angle(F); %相位谱
subplot(2, 2, 1),imshow(A2);title('cameraman加入周期性噪声');
subplot(2, 2, 2),imshow(h1,[]);title('cameraman加入周期性噪声的幅度谱');

[x,y] = size(A2);
F3 = F2(x/2:x/2+1,y/2:y/2+1);
F2(x/2:x/2+1,y/2:y/2+1)=0;
thresh=max(F2(:));
for j=1:1:256
    for k=1:1:256
        if F2(j,k)>thresh+0.4
            F2(j,k)=0;
        end
    end
end
F2(x/2:x/2+1,y/2:y/2+1)=F3;
R = ifft2(F2.*exp(i*F2ph));
w = abs(R);
subplot(2, 2, 3),imshow(real(R));title('复原的图像');
subplot(2, 2, 4),imshow(0.25*log(l+fftshift(w)),[]);title('复原的图像的幅度谱');