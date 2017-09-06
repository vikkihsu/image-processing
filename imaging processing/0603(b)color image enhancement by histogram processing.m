I=A;
r=I(:,:,1); g=I(:,:,2); b=I(:,:,3);
II=rgb2gray(I);
[h,w]=size(II);
total=h*w;
r1=zeros(h,w); g1=zeros(h,w); b1=zeros(h,w);
for i=1:total
    t=I(i);
    r1(t+1)=r1(t+1)+1;
    g1(t+1)=g1(t+1)+1;
    b1(t+1)=b1(t+1)+1;
end
pr1=r1./total; pg1=g1./total; pb1=b1./total;
r2=zeros(256,1); g2=zeros(256,1); b2=zeros(256,1);
r2(1)=pr1(1).*255; g2(1)=pg1(1).*255; b2(1)=pb1(1).*255;
for i=2:256
    r2(i)=r2(i-1)+pr1(i)*255;
    g2(i)=g2(i-1)+pg1(i)*255;
    b2(i)=b2(i-1)+pb1(i)*255;
end
aver=(r2+b2+g2)./3;
I1=zeros(h,w);I2=zeros(h,w);I3=zeros(h,w);
for i=1:total
    k1=r(i);
    k2=g(i);
    k3=b(i);
    r(i)=aver(k1+1);
    g(i)=aver(k2+1);
    b(i)=aver(k3+1);
end
I=cat(3,r,g,b);
imshow(uint8(I))