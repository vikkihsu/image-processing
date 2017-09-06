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
g=ifft2(ifftshift(G));
g=255*(g-min(g(:)))/(max(g(:))-min(g(:)));
N=random('Normal',0,10,h,w);
M=g+N;
K=0.0025;
G2=fftshift(fft2(M));
F2=G2.*(H.*conj(H))./(H.*(H.*conj(H)+K));
g1=ifft2(ifftshift(F2));
g1=255*(g1-min(g1(:)))/(max(g1(:))-min(g1(:)));
imshow(uint8(g1))

