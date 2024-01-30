clc
clear

img= imread('cameraman.tif');
img = double(img);

h =[0.4 0.8 0.4; 0.6 1.0 0.6; 0.4,0.8,0.4];

kernel= ones(10)/100;

kernel2=ones(1,10)/10;
kernel3=ones(10,1)/10;

img1=imfilter(img,h);
imshow(uint8(img1))