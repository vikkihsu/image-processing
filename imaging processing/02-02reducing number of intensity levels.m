function [I1]=Untitled2 (n,A)
I=rgb2gray(A);
I1=I./(2.^(8-n)).*(2.^(8-n));
imshow(uint8(I1))

