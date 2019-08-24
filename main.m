
I=imread('Agfa_DC-733s_0_454.jpg');
imshow(I)
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

rgbImage = cat(3,IoutDCT , IoutDCT1, IoutDCT2);
imshow(rgbImage);

 
[row coln]= size(IoutDCT);
I= (IoutDCT);
I = I - (128*ones(256));

DCT_matrix8 = dct(eye(8));
iDCT_matrix8 = DCT_matrix8'; 
for i1=[1:8:row]
    for i2=[1:8:coln]
        zBLOCK=I(i1:i1+7,i2:i2+7);
        win1=DCT_matrix8*zBLOCK*iDCT_matrix8         
        
        w=win1(2:end)             
        m=mean(w(:));             

        mu = mean((w(:)).^2);   
       
        
        dct_domain1(i1:i1+7,i2:i2+7)=win1;
    end
end

[row coln]= size(IoutDCT1);
I= (IoutDCT1);
I = I - (128*ones(256));

DCT_matrix8 = dct(eye(8));
iDCT_matrix8 = DCT_matrix8';
for i1=[1:8:row]
    for i2=[1:8:coln]
        zBLOCK=I(i1:i1+7,i2:i2+7);
        win1=DCT_matrix8*zBLOCK*iDCT_matrix8         
        
        w=win1(2:end)             
        m=mean(w(:));            
     
        mu = mean((w(:)).^2);   
        
        dct_domain2(i1:i1+7,i2:i2+7)=win1;
    end
end
[row coln]= size(IoutDCT2);
I= (IoutDCT2);
I = I - (128*ones(256));

DCT_matrix8 = dct(eye(8));
iDCT_matrix8 = DCT_matrix8';
for i1=[1:8:row]
    for i2=[1:8:coln]
        zBLOCK=I(i1:i1+7,i2:i2+7);
        win1=DCT_matrix8*zBLOCK*iDCT_matrix8         
        
       
        
        w=win1(2:end)            
        m=mean(w(:));             
        
        mu = mean((w(:)).^2);   
        
        
        dct_domain3(i1:i1+7,i2:i2+7)=win1;
    end
end
rnv=mean((dct_domain1(:)).^2);
disp(rnv);
gnv=mean((dct_domain2(:)).^2);
disp(gnv);
bnv=mean((dct_domain3(:)).^2);
disp(bnv);


prnu=(rnv+gnv+bnv)/3;
format bank
disp(prnu);



