close all;
clear all;

ep = 0.0001;

ans11 = sln(1,2,ep,1)
ans12 = sln(-1,0,ep,1)

temp(1,2,ep,1,ans11);
temp(-1,0,ep,1,ans12);

ans21 = sln(1,2,ep,2)
temp(1,2,ep,2,ans21);

ans31 = sln(0,1.57,ep,3)
temp(0,1.57,ep,3,ans31);

ans41 = sln(0,1.57,ep,4)
temp(0,1.57,ep,4,ans41);

ans51 = sln(0,1,ep,5)
temp(0,1,ep,5,ans51);

ans61 = sln(0,1.57,ep,6)
ans62 = sln(1.57,3.14,ep,6)

temp(0,1.57,ep,6,ans61);
temp(1.57,3.14,ep,6,ans62);

ans71 = sln(-5,0,ep,7)
ans72 = sln(0,5,ep,7)

temp(-5,0,ep,7,ans71);
temp(0,5,ep,7,ans72);

ans81 = sln(-2,0,ep,8)
ans82 = sln(0,2,ep,8)

temp(-2,0,ep,8,ans81);
temp(0,2,ep,8,ans82);

ans91 = sln(0,2,ep,9)

temp(0,2,ep,9,ans91);

ans101 = sln(1.5,4,ep,10)

temp(1.5,4,ep,10,ans101);

ans111 = sln(2,4.71,ep,11)
ans112 = sln(31*pi,31.5*pi,0.0001,11)

temp(2,4.71,ep,11,ans111);
temp(31*pi,31.5*pi,0.0001,11,ans112);
