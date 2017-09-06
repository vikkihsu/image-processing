I=rgb2gray(A);
[h,w]=size(I); 
b=zeros(h*3,w*3);
I1=I./25*25;
u=1;
v=1;
for x=1:h
    for y=1:w
        temp=I1(x,y);
        switch temp
            case 0
                b(u,v)=0;
            case 25
                b(u,v+1)=255;
            case 50
                b(u,v+1)=255;
                b(u+2,v+2)=255;
            case 25*3
                b(u,v+1)=255;
                b(u+2,v+2)=255;
                b(u,v)=255;
            case 25*4
                 b(u,v+1)=255;
                 b(u+2,v+2)=255;
                 b(u,v)=255;
                 b(u+2,v)=255;
            case 25*5
                b(u,v+1)=255;
                b(u+2,v+2)=255;
                b(u,v)=255;
                b(u+2,v)=255;
                b(u+2,v+2)=255;
            case 25*6
                b(u,v+1)=255;
                b(u+2,v+2)=255;
                b(u,v)=255;
                b(u+2,v)=255;
                b(u+2,v+2)=255;
                b(u+2,v+1)=255;
            case 25*7
                b(u,v+1)=255;
                b(u+2,v+2)=255;
                b(u,v)=255;
                b(u+2,v)=255;
                b(u+2,v+2)=255;
                b(u+2,v+1)=255;
                b(u+1,v+2)=255;
            case 25*8
                b(u,v)=255;
                b(u,v+1)=255;
                b(u+2,v+2)=255;
                b(u+2,v)=255;
                b(u+2,v+2)=255;
                b(u+2,v+1)=255;
                b(u+1,v+2)=255;
                b(u,v+1)=255;
            case 25*9
                b(u,v+1)=255;
                b(u+2,v+2)=255;
                b(u,v)=255;
                b(u+2,v)=255;
                b(u+2,v+2)=255;
                b(u+2,v+1)=255;
                b(u+1,v+2)=255;
                b(u,v+1)=255;
                b(u+1,v+1)=255;
        end
        v=v+3;
    end
v=1;
u=u+3;
end
imshow(uint8(b))
                
           
            