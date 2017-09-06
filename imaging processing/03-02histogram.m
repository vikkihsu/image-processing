A=rgb2gray(A1);
[h,w]=size(A);
total=h*w;
n=zeros(256,1);
for i=1:total
    t=A(i);
    n(t+1)=n(t+1)+1;
end
pr=n./total;
s=zeros(256,1);
s(1)=pr(1)*255;
for i=2:256
    s(i)=s(i-1)+pr(i)*255;%histogram equalization
end
for i=1:total
    k=A(i);
    A(i)=s(k+1);
end
imshow(A)
    
        
