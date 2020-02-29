%padding of an image
%img=imread('D:\project\picture\apple.jpg');

a = imgetfile();
img = imread(a);
subplot(2,1,1),imshow(img), title('Source image');
img=rgb2gray(img);
[x,y]=size(img);
for i=1:x
    for j=1:y
        if (i<=5 || j<=5 || i>=x-5 || j>=y-5 )
            img(i,j)=0;
        end
        
    end
end
subplot(2,1,2),imshow(img), title('After padding');