I=rgb2gray(origin);
[h,w]=size(I);
F=fftshift(fft2(I));
H=zeros(h,w);
for u=1:h
    for v=1:w
        T=1;%
        a=0.1;%
        b=0.1;%
        c=(u+1-h/2)*a+(v+1-w/2)*b;
        if c==0
            H(u,v)=1;
        else
        H(u,v)=T/(pi*c)*sin(pi*c)*exp(-sqrt(-1)*pi*c);
        end
    end
end
G=F.*H;
g=ifft2(fftshift(G));
I3=(g-min(g(:)))/(max(g(:))-min(g(:)))*255;
imshow(uint8(I3))
