I=rgb2gray(origin);
[h,w]=size(I);
Pa=0.2;
Pb=0.2;
ppepper=round(Pa*h*w);
psalt=round(Pb*h*w);
PP=randperm(h*w,ppepper);
PS=randperm(h*w,psalt);
I(PP)=0;
I(PS)=255;
a=uint8(zeros(2,w));
b=uint8(zeros(h+4,2));
A1=[a;I;a];
A=[b A1 b];
temp=uint8(zeros(h+4,w+4));
for x=2:(w+3)
    for y=2:(h+3)
        t1=A((y-1):(y+1),(x-1):(x+1));%不同情况不同需求，可能乘以8
        t=median(t1(:));
        temp(y,x)=t;
    end
end
imshow(uint8(temp))