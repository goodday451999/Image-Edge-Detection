clc
clear all
close all

% read the image file
img = imread('image1.jpg');
img = rgb2gray(img);

% Robert edge
img_roberts = edge(img, 'roberts');
% Sobel edge
img_sobel = edge(img, 'sobel');
% Prewitt edge
img_prewitt = edge(img, 'prewitt');
% Log edge
img_log = edge(img, 'log');
% Canny edge
img_canny = edge(img, 'canny');

% print the original
subplot(2,3,1),imshow(img),title('Original');
% Roberts Edge Detection
subplot(2,3,2),imshow(img_roberts),title('Roberts');
% Sobel Edge Detection
subplot(2,3,3),imshow(img_sobel),title('Sobel');
% Prewitt Edge Detection
subplot(2,3,4),imshow(img_prewitt),title('Prewitt');
% Log Edge Detection
subplot(2,3,5),imshow(img_log),title('Log');
% Canny Edge Detection
subplot(2,3,6),imshow(img_canny),title('Canny');

