clc,
close all;
im=imread('checker.png');
line_D(im,6,0.5);
im=imread('checker2.png');
line_D(im,10,.1)
%line_Dn(image,threshold for canny,sigma,resolution,peak max)
im=imread('checker-noisy.png');
line_Dn(im,6,5,0.5,5,0.5,40);
im=imread('checker-noisy2.png');
line_Dn(im,10,5,0.5,1,0.5,41)
im=imread('ground.jpg');
im=rgb2gray(im);
line_Dn(im,50,1,0.2,1,0.6,21)
