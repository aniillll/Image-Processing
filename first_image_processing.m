     %imshow() zeros() uintk() FONKSİYONLARINI GÖRDÜK.
%images are represented as arrays in MATLAB
%Create a 4x6 array to represent a gray level image:
I=zeros(4,6);
disp(I);
I=[0 0 100 120 200 250;
    0 0 150 0 250 100;
    0 0 122 64 45 198;
    255 24 87 0 211 90
    ];
%resimdeki gri seviye değeri en fazla 255 olduğu için 2^k>=255 k=8 bit
%olyor bu yüzden yarattığımızı resim yapmak için uint8 formatına
%getiriyoruz.
I=uint8(I);
figure;%bununla yeni bir çerçeve açtık
imshow(I);%resmi gösterdik
image(I);
colormap(gray(256));