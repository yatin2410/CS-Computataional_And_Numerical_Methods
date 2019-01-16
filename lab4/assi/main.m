clear all;
close all;

ep = 0.0001;

ans11 = sln(1,2,ep,1)
ans12 = sln(-1,0,ep,1)

ans21 = sln(1,2,ep,2)

ans31 = sln(0,1.57,ep,3)

ans41 = sln(0,1.57,ep,4)

ans51 = sln(0,1,ep,5)

ans61 = sln(0,1.57,ep,6)
ans62 = sln(1.57,3.14,ep,6)

ans72 = sln(0,5,ep,7)

ans81 = sln(-2,0,ep,8)
ans82 = sln(0,2,ep,8)

ans91 = sln(0,2,ep,9)

ans101 = sln(1.5,4,ep,10)

ans111 = sln(2,4.71,ep,11)
ans112 = sln(31*pi,31.5*pi,0.0001,11)

