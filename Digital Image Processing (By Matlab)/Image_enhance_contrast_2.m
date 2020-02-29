a = imgetfile();
img = imread(a);
img = rgb2gray(img);
subplot(2,2,1);imshow(img);title('Orgianl image');
subplot(2,2,2);imhist(img);title('Histogram of Orgianl image');
I = histeq(img);
subplot(2,2,3);imshow(I);title('Enhance the contrast of image');
subplot(2,2,4);imhist(I);title('Histogram ofEnhance the contrast of image');


%clc;clear all;close all;
%img=imread('G:\MatLab\image\rr.png');
%figure(1);
%subplot(3,3,1),imshow(img),title('Source image')
%subplot(3,3,3),imhist(img),title('Source image histogram')
%stretched_image=imadjust(img,[0.5 0.7],[]);
%subplot(3,3,4),imshow(stretched_image),title('Contrast incresing image');
%subplot(3,3,6),imhist(stretched_image),title('Contrast incresing image histogram');
%stretched_image=imadjust(img,[],[0.6 0.8]);
%subplot(3,3,7),imshow(stretched_image),title('Contrast decresing image');
%subplot(3,3,9),imhist(stretched_image),title('Contrast deresing image histogram');