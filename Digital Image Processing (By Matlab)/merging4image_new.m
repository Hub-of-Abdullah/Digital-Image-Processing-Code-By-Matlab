a=imread ('Abdullah.jpg');
a1 = imresize (a, [400,400]);
b=imread ('apple.jpg');
b1= imresize (b, [400,400]);
c = imread('apple.jpg');
c1 = imresize(c, [400,400]);
d = imread('Abdullah.jpg');
d1 = imresize(d, [400, 400]);
% img = [b d];

img1 = horzcat(a1, b1);

% img2 = [b d];

img2 = horzcat(c1, d1);

final = vertcat(img1, img2);

subplot(2,1,1),imshow(final);