%imfilter fonksiyonu imfilter(orjinal resim,filtre türü,artan kenarları atama)

img2=imread("C:\Users\anilo\OneDrive\Masaüstü\penguins.jpeg","jpeg");
a=rgb2gray(img2);
figure(1);
imshow(a);
f_mask=[0 -1 0;-1 4 -1;0 -1 0];
b=imfilter(a,f_mask,'replicate');
c=a+b;
figure(2);
imshow(c);
