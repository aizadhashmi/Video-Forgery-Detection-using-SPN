d = VideoReader('forged.avi');I=read(d,220);
I=im2double(I);
imshow(I);
I=imresize(I,[256,256]);
IMin0=im2double(I);
red = IMin0(:,:,1);     
green = IMin0(:,:,2);  
blue = IMin0(:,:,3);    
bb=8;       
RR=4;      
K=RR*bb^2;  
sigma = 0.03; 

IMin=red+sigma*randn(size(red));
[IoutDCT,output] = denoiseImageDCT(IMin, sigma, K);
IMin1=green+sigma*randn(size(green));
[IoutDCT1,output] = denoiseImageDCT(IMin1, sigma, K);
IMin2=blue+sigma*randn(size(blue));
[IoutDCT2,output] = denoiseImageDCT(IMin2, sigma, K);

J = cat(3,IoutDCT , IoutDCT1, IoutDCT2);
Z=imread('Z.jpg');
Z=im2double(Z);
Z=imresize(Z,[256,256]);
J=im2double(J);
J=imresize(J,[256,256]);

L = imadd(Z,J);
imshow(L);
imsave