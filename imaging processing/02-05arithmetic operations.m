C=A+B;%图片大小要相同
I=(C-min(C(:)))/(max(C(:))-min(C(:)))*255;
imshow(I)