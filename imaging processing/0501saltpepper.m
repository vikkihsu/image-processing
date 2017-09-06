I=double(rgb2gray(origin));
[h,w]=size(I);
Pa=0.2;
Pb=0.2;
ppepper=round(Pa*h*w);
psalt=round(Pb*h*w);
PP=randperm(h*w,ppepper);
PS=randperm(h*w,psalt);
I(PP)=0;
I(PS)=255;
imshow(uint8(I))

