%NEGATİVE TRANSFORMATİON ,GAMMA TRANSFORMATİON
%RESMİ NEGATİVE YAPMAK İÇİN=> NEGATİVE_İMAGE=L-1-img  L=resim kaç bitle
%işlem yapılıyorsa==>> 2^bit=L
img1=imread("WhatsApp Image 2021-10-11 at 17.32.23 (1).jpeg");
figure("Name","Original image");
axis on;
imshow(img1);
Negative_image=256-1-img1;
figure("Name","negative image");
imshow(Negative_image);
%0<gamma<1 :resim açılır    gamma>1 :resim kararır

%gama transformtion
%0<gamma<1: gama bu aralıkta iken dark pixelleri daha geniş bir aralığa
%yayıyoruz,aydınlık pixelleri ise daha dar bir aralığa yapmış oluyoruz böylece resim daha aydınlık olmuş oluyor. 0'a yaklaştıkça gama
%resim daha parlak olur
%gama>1 iken aydınlık pixelleri daha geniş bir aralığa yayrken, karanlık
%olan pixelleri de daha dar bir aralığa yaydığı için resim kararır
Img_D=imread('C:\Users\anilo\OneDrive\Documents\MATLAB\image_processing\Image_processing_post_otsus_algorithm.jpg','jpeg');
figure("Name","DARKNESS PHOTO");
imshow(Img_D);
Img_D=double(Img_D);
Img_Y=Img_D;
Img_scaled=Img_D/255;%scale intencity values to range [0 1]==>resimdeki her pixelin değerini 0 ile 1 aralığına çektik

gamma=0.5;
c=1;
Img_g=c*Img_scaled.^gamma;
Img_g=255*Img_g;

%SCALE intencity back to the range [0 255]:
figure("Name","gamma=0.5");
imshow(Img_g);
figure("Name","histogram of gamma=0.5 transform");
imhist(Img_g);

Img_scaled1=Img_Y/255;
gamma=2;
c=1;
Img_G1=c*Img_scaled1.^gamma;
Img_G1=255*Img_G1;

%SCALE intencity back to the range [0 255]:
figure("Name","gamma=0.5");
imshow(Img_G1);
figure("Name","histogram of gamma=2 transform");
imhist(Img_G1);