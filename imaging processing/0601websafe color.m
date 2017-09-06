function [I1]=a (img)
I1=img./51.*51;%色度值分为5块，所以除以51（255/5）
imshow(uint8(I1))
