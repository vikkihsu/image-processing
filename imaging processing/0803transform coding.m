I=double(rgb2gray(origin));
[h,w]=size(I);
I1=zeros(8,8);
I3=zeros(h,w);
x=1;y=1;
I=I-128;%����λ������+128
while x<h
    while y<w
        I1=fft2(I(x:(x+7),y:(y+7)));%����������I�ֳ�8*8��С����Ž�I1��
                                    %���Ұ�fft2����dct2��ifft2����idct2
        II1=abs(I1);%fourier���и�����������abs
        I2=sort(reshape(II1,1,64),'descend');
        a=I2(1,8);
        II1(II1<a)=0;%matlab�����Զ���λ���꣬II1<a��II1С��a��λ��
        II1(II1>=a)=1;
        I1=II1.*I1;%��I1��С��a��ֵ����
        I3(x:(x+7),y:(y+7))=ifft2(I1);
        y=y+8;
    end
    x=x+8;
    y=1;
end
g=I3+128;
g = 255 * (g - min(g(:))) / (max(g(:)) - min(g(:)));
imshow(uint8(g))
