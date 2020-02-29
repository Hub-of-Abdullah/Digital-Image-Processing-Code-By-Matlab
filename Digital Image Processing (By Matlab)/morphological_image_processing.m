close all;
clear all; 
clc;

% Read an input image
A = imread('Abdullah.jpg');

% Convert to single channel
A = rgb2gray(A);

% Generate structuring element for use
se = strel('disk', 10); 

% Perform image erosion
B_eroded = imerode(A, se);

% Perform image dilation
B_dilated = imdilate(A, se);

% Perform image opening operation
B_open = imopen(A, se);
% Perform image closing operation
B_close = imclose(A, se);


% Display the images side-by-side for comparison
figure, 
subplot(2, 3, 2), imshow(A), title('Original read image');
subplot(2, 3, 4), imshow(B_eroded), title('Original image after Erosion');
subplot(2, 3, 6), imshow(B_dilated), title('Original image after Dilation');
figure,
subplot(2, 3, 2), imshow(B_open), title('Original image after Opening');
subplot(2, 3, 4), imshow(B_close), title('Original image after Closing');