img=imread("C:\Users\anilo\OneDrive\Masaüstü\penguins.jpeg","jpeg");
A=rgb2gray(img);
figure(1);
imshow(A);
A=double(A);

%LAPLACE FORMATINDA notlrdaki gibi bir maske tanımlıyorum
f_mask=[0 -1 0;1 4 -1;0 1 0];
%yeni bir matris tanımlıyoruz bu matris a matrisinden kenar ve satır olarak
%2 fazla olacak
ab=zeros(size(A,1)+2,size(A,2)+2);
disp(ab);
ab(2:end-1,2:end-1)=A;
B=zeros(size(A));
%for looptan sonra elde ettiğimiz sonuçta ayrıntıları elde etmeyi umuyoruz.
for i=1:size(A,1)
    for j=1:size(A,2)
        ij_window=ab(i:i+2,j:j+2);
        a=ij_window.*f_mask;
        B(i,j)=sum(a(:));
    end;
end;
figure(3);
imshow(B);
figure(4);
imshow(B, [min(B(:)) max(B(:))]);
c=A+B;%laplecen i orjinal resmimize ekleyerek keskinleştirilmiş resmi elde ederiz.
imshow(uint8(c));
