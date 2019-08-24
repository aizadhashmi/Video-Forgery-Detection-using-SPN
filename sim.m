I=imread('prnu.jpg')
J=imread('9499.jpg')


I=im2double(I);

I=imresize(I,[256,256]);
IMin0=im2double(I);
red = IMin0(:,:,1);     
green = IMin0(:,:,2);  
blue = IMin0(:,:,3);    


J=im2double(J);

J=imresize(J,[256,256]);
IMin1=im2double(J);
red1 = IMin1(:,:,1);     
green1 = IMin1(:,:,2);  
blue1 = IMin1(:,:,3);    


r = corr2(red,red1);
g=corr2(green,green1);
b=corr2(blue,blue1);
rgb=(r+g+b)/3;

disp(rgb);
