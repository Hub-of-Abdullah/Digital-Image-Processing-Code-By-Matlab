a = imgetfile;
img = imread(a);
% Image histogram.
%i1=input('Enter first image name with location (rgb.jpg) :');
%img=imread('F:\matlab\lab_test\camera.png');
img=rgb2gray(img);
subplot(2,2,1),imshow(img),title('Source image');
subplot(2,2,2);imhist(img);title('Histogram of Enhance Image');

d=size(img);
n=d(1)*d(2);
pk=zeros(0,255);
for i=0:255
   s=find(img==i);
   [nk b]=size(s);
   pk(i+1)=nk/n;    
end

% subplot(2,2,2),bar(0:255,9*pk,'stack'),title('Histogram of Orginal Image');
p = histeq(img);
subplot(2,2,3),imshow(p),title('Building histeq');
subplot(2,2,4);imhist(p);title('Histogram of Enhance Image');



d=size(p);
n=d(1)*d(2);
pk=zeros(0,255);
for i=0:255
   s=find(p==i);
   [nk b]=size(s);
   pk(i+1)=nk/n;    
end
%subplot(2,2,4),bar(0:255,9*pk,'stack'),title('Histogram of Enhance Image');