A=rgb2gray(pic);%http://www.rapidtables.com/web/color/blue-color.htm
[h,w]=size(A);
R=zeros(h,w);
G=zeros(h,w);
B=zeros(h,w);
for x=1:h
    for y=1:w
        if A(x,y)<=128
            R(x,y)=176;
            G(x,y)=244;
            B(x,y)=230;
        else
            R(x,y)=75;
            G(x,y)=0;
            B(x,y)=130;
        end
    end
end
imshow(uint8(cat(3,R,G,B)))