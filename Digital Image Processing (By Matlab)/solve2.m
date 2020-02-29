clc;
close all;
clear;
%solution 2 7th batch

img1= imread(imgetfile());
img2= imread(imgetfile());
%make sure size is different
img1=imresize(img1,[512,256]);
img2=imresize(img2,[512,512]);

[r1,c1,num1]=size(img1);
[r2,c2,num2]=size(img2);
r=max(r1,r2);
c=max(c1,c2);
NewImage = zeros(r,c,3,'uint8');
for i=1:r
    for j=1:c
        for k=1:num1
            if(i<=r1&&j<=c1)
                NewImage(i,j,k)=img1(i,j,k);
            end
            if(i<=r2 && j<=c2)
                NewImage(i,j,k)=NewImage(i,j,k)+img2(i,j,k);
            end
        end
    end
end
imgh=rgb2gray(NewImage);
figure,imshow(NewImage),title('Sum two diff size image');
figure,imhist(imgh),title('histogram of the image');
D=zeros(1,512);
for i=1:r
    for j=1:c
        d=imgh(i,j);
        D(d)=D(d)+1;
    end
end
D=sort(D,'descend');
for i=1:5
    fprintf('%i ',D(i));
end
fprintf('\n');
    

