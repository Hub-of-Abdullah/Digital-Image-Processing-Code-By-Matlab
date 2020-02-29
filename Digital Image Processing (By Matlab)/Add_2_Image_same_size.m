img1=imread('C:\Users\ABDULLAH\Desktop\MatLab\Solid_blue.png');
img2=imread('C:\Users\ABDULLAH\Desktop\MatLab\Red.jpg');
k= imresize(img2,[size(img1,1) size(img1,2)]);
result= imadd(k,img1);
subplot(2,2,1), imshow(img1),title('picture1')
subplot(2,2,2), imshow(img2),title('picture2')
subplot(2,2,3), imshow(k),title('After resize picture2')
subplot(2,2,4), imshow(result),title('After add')