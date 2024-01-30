clc
clear
img = imread('cameraman.tif');
img = double(img);
imshow(img)

[m n]=size(img)
k=ones(11)
mm = imfilter(img,k,'symmetric')
for i=1 : m-11
    for j=1 : n-11
        sum =0;
        for p=1:11
            for q=1:11
              sum = sum+img(i+p,j+q)*k(p,q);
            end
        end
        igm(i,j)=sum/121;
   end
end
figure(2)
imshow(uint8(igm))