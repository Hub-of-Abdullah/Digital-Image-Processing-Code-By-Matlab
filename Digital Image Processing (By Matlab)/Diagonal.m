%padding of an image
%img=imread('D:\project\picture\apple.jpg');

a = imgetfile();
img = imread(a);
subplot(2,1,1),imshow(img), title('Source image');
 img=rgb2gray(img);
[x,y]=size(img);
for i=1:x
    for j=1:y
        if (i==j )
            img(i,j)=0;
        end
        if (i+j==y+1)
              img(i,j)=0;
        end
        
    end
end
subplot(2,1,2),imshow(img), title('After Diagonal');