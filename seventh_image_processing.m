
img=imread("C:\Users\anilo\OneDrive\Masaüstü\penguins.jpeg");
img=rgb2gray(img);
figure("Name","original photo of penguens");
imshow(img);

% a>0.5 yaptığımızda 4x4 a matrisinde her bir elemana sırayla bakılıyor eğer
%eleman 0.5 den büyükse matrisde bu elemanın yerine 1 atanıyor,eğer küçükse
%0 atanıyor.
a=rand(4);
a=a>0.5;
disp(a);

%threhholding (img>128) yaptığımızda gri seviye leveli 128 den küçük olan
%pixellere 0 ,128 den büyük olan pixellere 1 atıyoruz
thr=128;
b=255*(img>thr);
figure("Name","thresholding photo");
imshow(b);
figure(3);
imhist(img);


%contrast enhancement(stretching)
img2=imread('C:\Users\anilo\OneDrive\Masaüstü\t22.jpg','jpeg');
figure(1);
imshow(img2);
figure(2);
imhist(img2);
img2=double(img2);
img2_uint8=uint8(img2);
min_value=min(img2(:));
max_value_graylevel=max(img2(:));

IC=255/(max_value_graylevel-min_value)*(img2-min_value);
IC=uint8(IC);
figure(4);
imshow(IC);
figure(5);
imhist(IC);
I_new=histeq(img2_uint8);
figure("Name","histogram eq");
imshow(I_new);
figure("Name","histogram eq example histogram");
imhist( I_new);