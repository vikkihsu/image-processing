
[M,N]=size(I);
D=zeros(M,N);
H=zeros(M,N);
D0=40;
for u=1:M;
    for v=1:N;
        D(u,v)=((u-M/2).^2+(v-N/2).^2).^(1/2);
        H(u,v)=1-exp(-D(u,v).^2./(2.*D0.^2));
     end
end
H=H.*255;%实际用的时候不需要乘以255
imshow(uint8(H))