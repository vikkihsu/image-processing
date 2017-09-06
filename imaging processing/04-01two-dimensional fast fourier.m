I=rgb2gray(origin);
[M,N]=size(I);
F=fft2(fftshift(I));
%for x=1:M
%    for y=1:N
%       I(x,y)=I(x,y)*(-1).^(x+y);
%   end
%end
%the green ones are written as fftshift
H=ones(M,N);
G=H.*F;
g=real(ifftshift(ifft2(G)));
%for x=1:M
%   for y=1:N
%        g(x,y)=g(x,y)*(-1).^(x+y);
%   end
%end
imshow(uint8(g))