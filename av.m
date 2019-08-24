a1=imread('454.jpg');
a2=imread('458.jpg');
a3=imread('459.jpg');
a4=imread('460.jpg');
a5=imread('461.jpg');
a6=imread('466.jpg');
a7=imread('472.jpg');
a8=imread('475.jpg');
a9=imread('478.jpg');
a10=imread('481.jpg');
a11=imread('484.jpg');
a12=imread('488.jpg');
a13=imread('491.jpg');
a14=imread('494.jpg');
a15=imread('506.jpg');
a16=imread('509.jpg');
a17=imread('512.jpg');
a18=imread('515.jpg');
a19=imread('516.jpg');
a20=imread('521.jpg');
a21=imread('522.jpg');
a22=imread('527.jpg');
a23=imread('530.jpg');
a24=imread('533.jpg');
a25=imread('536.jpg');
a26=imread('537.jpg');
a27=imread('542.jpg');
a28=imread('543.jpg');
a29=imread('544.jpg');
a30=imread('550.jpg');
 Z = imadd(a1,a2)
 Zav=Z\2;
 Z= imadd(Z,a3)
 Zav=Z/2;
 
 Z= imadd(Z,a4)
 Zav=Z/2;
 
 Z= imadd(Z,a5)
 Zav=Z/2;
 
 Z= imadd(Z,a6)
 Zav=Z/2;
 
 Z= imadd(Z,a7)
 Zav=Z/2;
 
 Z= imadd(Z,a8)
 Zav=Z/2;
 
 Z= imadd(Z,a9)
 Zav=Z/2;
 
 Z= imadd(Z,a10)
 Zav=Z/2;
 
 Z= imadd(Z,a11)
 Zav=Z/2;
 
 Z= imadd(Z,a12)
 Zav=Z/2;
 
 Z= imadd(Z,a13)
 Zav=Z/2;
 
 Z= imadd(Z,a14)
 Zav=Z/2;
 
 Z= imadd(Z,a15)
 Zav=Z/2;
 
 Z= imadd(Z,a16)
 Zav=Z/2;
 
 Z= imadd(Z,a17)
 Zav=Z/2;
 
 Z= imadd(Z,a18)
 Zav=Z/2;
 
 Z= imadd(Z,a19)
 Zav=Z/2;
 
 
 Z= imadd(Z,a20)
 Zav=Z/2;
 
 
 Z= imadd(Z,a21)
 Zav=Z/2;
 
 Z= imadd(Z,a22)
 Zav=Z/2;
  Z= imadd(Z,a23)
 Zav=Z/2;
 
 Z= imadd(Z,a24)
 Zav=Z/2;
 
 Z= imadd(Z,a25)
 Zav=Z/2;
 
 Z= imadd(Z,a26)
 Zav=Z/2;
 
 Z= imadd(Z,a27)
 Zav=Z/2;
 
 Z= imadd(Z,a28)
 Zav=Z/2;
 Z= imadd(Z,a29)
 Zav=Z/2;
 Z= imadd(Z,a30)
 Zav=Z/2;
imshow(Z)
 imsave