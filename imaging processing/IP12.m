 P=phantom(128);
angle=linspace(0,179,180);
R=radon(P,angle);
R=1e12*imnoise(1e-12*R,'poisson');
I1=iradon(R,angle,'ram-lak');
subplot(1,3,1),imshow(I1,[]),title('w/ ram-lak filter')
I1=iradon(R,angle,'cosine');
subplot(1,3,2),imshow(I1,[]),title('w/ cosine filter')
I1=iradon(R,angle,'hann');
subplot(1,3,3),imshow(I1,[]),title('w/ hann filter')
