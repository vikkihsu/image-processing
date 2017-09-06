I=0.01*log(A+1);
I1=min(I(:));
I2=max(I(:));
I3=(I-I1)/(I2-I1)*255;
imshow(uint8(I3))