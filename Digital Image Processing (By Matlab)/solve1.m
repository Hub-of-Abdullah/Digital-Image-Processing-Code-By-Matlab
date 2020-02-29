clc;
close all;
clear;
%solution 1 7th batch
%img1=imread('I:\photos\img\3.jpg');
img1= imread(imgetfile());
img1=imresize(img1,[246,246]);
[r,c,num]=size(img1);
NewImage=zeros(r+10,c+10,num,'uint8');
for i=6:r+5
    for j=6:c+5
        for k=1:num
            NewImage(i,j,k)=img1(i-5,j-5,k);
        end
    end
end
% make sure the size and padding ok from workspace
figure,imshow(NewImage),title('After padding');

[r1,c1,num1]=size(NewImage);
for i=1:r1
    for j=1:c1
        for k=1:num1
            if(i==j || i+j==r1+1)
                NewImage(i,j,k)=0;
            end
        end
    end
end
figure,imshow(NewImage),title('padding and assiginign 0 gray level in diagonal');