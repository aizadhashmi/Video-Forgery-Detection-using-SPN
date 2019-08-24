
I=imread('Nikon_D200_1_17206.jpg');
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


J=imresize(J,[256,256]);
Z = imsubtract(I,J);
imshow(Z);
imsave