%a = imread('1.jpg');
a = imgetfile();
a= imread(a);

%b = imread('2.jpg');
b = imgetfile();
b = imread(b);

[ax ,ay ,az] = size(a);
[bx, by, bz] = size(b);

cx = max(ax,bx)
cy = max(ay,by)

c= zeros(cx, cy,'uint8');

for i=1:ax
    for j=1:ay
        c(i,j)=a(i,j);
    end
end

for i=1:bx
    for j=1:by
        c(i,j)=c(i,j)+b(i,j);
    end
end

subplot(131);imshow(a);title('Image 1');

subplot(132);imshow(b);title('Image 2');

subplot(1,3,3);imshow(c);title('Image added');