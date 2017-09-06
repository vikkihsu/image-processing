I=rgb2gray(origin);
[h,w]=size(I);
F=fftshift(fft2(I));
H=complex(zeros(h,w));
for u=1:h
    for v=1:w
        T=1;%
        a=0.1;%
        b=0.1;%
        c = (u+1-h/2)*a+(v+1-w/2)*b;
        if c == 0
            H(u,v) = 0;
        else
            H(u,v)=T*sin(pi*c)*exp(complex(0,-pi*c))/(pi*c);
        end
    end
end
G=F.*H;
g=ifft2(ifftshift(G));

g = 255 * (g - min(g(:))) / (max(g(:)) - min(g(:)));
imshow(uint8(g))
