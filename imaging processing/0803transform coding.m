I=double(rgb2gray(origin));
[h,w]=size(I);
I1=zeros(8,8);
I3=zeros(h,w);
x=1;y=1;
I=I-128;%反移位，后面+128
while x<h
    while y<w
        I1=fft2(I(x:(x+7),y:(y+7)));%（索引）把I分成8*8的小方块放进I1里
                                    %余弦把fft2换成dct2，ifft2换成idct2
        II1=abs(I1);%fourier里有复数，所以用abs
        I2=sort(reshape(II1,1,64),'descend');
        a=I2(1,8);
        II1(II1<a)=0;%matlab可以自动定位坐标，II1<a即II1小于a的位置
        II1(II1>=a)=1;
        I1=II1.*I1;%将I1中小于a的值抛弃
        I3(x:(x+7),y:(y+7))=ifft2(I1);
        y=y+8;
    end
    x=x+8;
    y=1;
end
g=I3+128;
g = 255 * (g - min(g(:))) / (max(g(:)) - min(g(:)));
imshow(uint8(g))
