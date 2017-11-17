function [ output_args ] = testhog( input_args )
%TESTHOG 此处显示有关此函数的摘要
%   此处显示详细说明
img = imread('8.png');
figure,imshow(img);
imgs = im2single(rgb2gray(img));
hog = vl_hog(imgs, 4 , 'verbose');
imhog = vl_hog('render', hog, 'verbose');
%clf;
imagesc(imhog);colormap gray;
subplot(2,1,1),imshow(img);
subplot(2,1,2),imshow(imhog);
end

