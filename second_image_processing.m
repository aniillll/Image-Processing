%imread(), size(),rgb2gray() FONKSİYONLARINI GÖRDÜK.
%imread ile okuma yapabilmemiz için aynı dosya içinde olmalıdır resim.
I=imread("scenary.jpeg");%resmi okuduk
imshow(I);%okuduğumuz resmi imshow() ile ekranda gösterdik
Igray=rgb2gray(I);%resmi renkliden gray levela getirdik.
imshow(Igray);%imshow() ile gri resmi ekranda gösterdik.
disp(size(Igray));
axis on;