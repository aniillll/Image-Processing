%logarithmic transform
img=imread('C:\Users\anilo\OneDrive\Masaüstü\penguins.jpeg','jpeg');
img_gray=rgb2gray(img);
figure("Name","penguins");
imshow(img_gray);
ad=double(img_gray);
log_transformed_image=log(1+ad);
log_transformed_image=uint8(255*log_transformed_image/max(log_transformed_image(:)));
figure("Name","logarithmic transformed image:");
imshow(log_transformed_image);
%gamma transform
gamma=2;
ad=double(img_gray);
ad=ad/max(ad(:));
b=ad.^gamma;
b=uint8(255*b);
figure("Name","gamma=2");
imshow(b);