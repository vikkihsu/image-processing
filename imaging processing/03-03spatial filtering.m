I=rgb2gray(origin);
[h,w]=size(I);
a=uint8(zeros(2,w));
b=uint8(zeros(h+4,2));
A1=[a;I;a];
A=[b A1 b];
B=uint8(ones(3,3));
x=2;
y=2;
temp=uint8(zeros(h+4,w+4));
for x=2:(w+3)
    for y=2:(h+3)
        t1=A((y-1):(y+1),(x-1):(x+1)).*B;%不同情况不同需求，可能乘以8
        t=sum(t1(:));
        temp(y,x)=t;
    end
end
imshow(uint8(temp))