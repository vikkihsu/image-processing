B1=double(B);
r=B1(:,:,1);g=B1(:,:,2);b=B1(:,:,3);
[hr,wr]=size(r);[hg,wg]=size(g);[hb,wb]=size(b);
ar=sum(r(:))./(hr.*wr);ag=sum(g(:))./(hg.*wg);ab=sum(b(:)./(hb.*wb));
dr=std(r(:));dg=std(g(:));db=std(b(:));
I=double(A);
r1=I(:,:,1);g1=I(:,:,2);b1=I(:,:,3);
[hr1,wr1]=size(r1);[hg1,wg1]=size(g1);[hb1,wb1]=size(b1);
for x=1:hr1
    for y=1:wr1
        if ar-1.25*dr>r1(x,y)||r1(x,y)>ar+1.25*dr
            r1(x,y)=256;
        else
            r1(x,y)=0;
        end
    end
end
for x=1:hg1
    for y=1:wg1
        if ag-1.25*dg>g1(x,y)||g1(x,y)>ag+1.25*dg
            g1(x,y)=256;
        else
            g1(x,y)=0;
        end
    end
end
for x=1:hb1
    for y=1:wb1
        if ab-1.25*db>b1(x,y)||b1(x,y)>ab+1.25*db
            b1(x,y)=256;
        else
            b1(x,y)=0;
        end
    end
end
I=cat(3,r1,g1,b1);
imshow(uint8(I))