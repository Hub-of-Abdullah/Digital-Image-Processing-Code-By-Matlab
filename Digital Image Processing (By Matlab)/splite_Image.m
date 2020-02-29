%Dividing image into four parts
%img= imread('D:\project\picture\apple.jpg');
a = imgetfile();
img = imread(a);

[rows, columns ,channel]= size(img);
col1=1;
col2=floor(columns/2);
col3=col2+1;
row1=1;
row2=floor(rows/2);
row3=row2+1;
%now crop
upperLift=imcrop(img,[col1 row1 col2 row2]);
upperRight=imcrop(img,[col3 row1 columns-col2 row2]);
lowerLift=imcrop(img,[col1 row3 col2 row2]);
lowerRight=imcrop(img,[col3 row3 columns- col2 rows-row2]);

subplot(2,3,1),imshow(img),title('original image');
subplot(2,3,2),imshow(upperLift),title('upperlift');
subplot(2,3,3),imshow(upperRight),title('upperright');
subplot(2,3,5),imshow(lowerLift),title('lowerlift');
subplot(2,3,6),imshow(lowerRight),,title('lowerright');