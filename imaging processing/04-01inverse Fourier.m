I=rgb2gray(origin);
[M,N]=size(I);
for x=1:M
    for y=1:N
        I(x,y)=I(x,y)*(-1).^(x+y-2);
    end
end
F=fft2(I);
D=zeros(M,N);
H=zeros(M,N);
D0=20;
for u=1:M;
    for v=1:N;
        D(u,v)=((u-M/2).^2+(v-N/2).^2).^(1/2);
        H(u,v)=exp(-D(u,v).^2./(2.*D0.^2));
     end
end
G=H.*F;
g=real(ifft2(G));
for x=1:M
    for y=1:N
        g(x,y)=g(x,y)*(-1).^(x+y-2);
    end
end
imshow(uint8(g))
