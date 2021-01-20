clc,close all;
im=imread('coins1.png');
circ_1(im,10);
im1=imread('coins2.jpg');
im1=rgb2gray(im1);
im1=imbinarize(im1);
circ_12(im1,15,40);