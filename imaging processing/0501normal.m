I=double(rgb2gray(A));
[h,w]=size(I);
N=random('Normal',10,50,h,w);
M=I+N;
imshow(uint8(M))