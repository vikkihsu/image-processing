[M,N]=size(I);
F=fft2(fftshift(I));
D=zeros(M,N);
H=zeros(M,N);
D0=10;
for u=1:M;
    for v=1:N;
        D(u,v)=((u-M/2).^2+(v-N/2).^2).^(1/2);
        H(u,v)=1-exp(-D(u,v).^2./(2.*D0.^2));
     end
end
G=H.*F;
g=real(ifftshift(ifft2(G)));
for x=1:M
    for y=1:N
        if g(x,y)<=50
            g(x,y)=0;
        else g(x,y)=256;
        end
    end
end
imshow(uint8(g))

