%9x9 average filtering 
A=imread("C:\Users\anilo\OneDrive\Masaüstü\penguins.jpeg","jpeg");
A=rgb2gray(A);
A=double(A);
B=zeros(size(A));

mask=(1/81)*ones(9);
for i=5:size(B,1)-4
    for j=5:size(B,2)-4
      sub_image=A(i-4:i+4,j-4:j+4);
      s=sub_image.*mask;
      B(i,j)=sum(s(:));
    end;
end;
figure(1);
imshow(uint8(A));

figure(2);
imshow(uint8(B));