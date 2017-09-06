P=phantom(128);
angle=linspace(0,179,180);
R=radon(P,angle);
I1=iradon(R,angle);
I2=iradon(R,angle,'linear','none');
subplot(1,3,1),imshow(P),title('original')
subplot(1,3,2),imshow(I1),title('filtered backprojection')
subplot(1,3,3),imshow(I2,[]),title('unfiltered backprojection')