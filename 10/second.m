clear all;
close all;

x=1;
y=2;
ep = 1e-6;
esum = 1;
cnt = 0;
while esum>ep
    cnt = cnt +1;
    arr = [-1*fxy(x,y) ; -1*gxy(x,y)];
    tmp = [fx(x,y) fy(x,y) ; gx(x,y) gy(x,y)];
    delta = pinv(tmp)*arr;
    esum = abs(delta(1) + delta(2));
    x= delta(1) + x;
    y= delta(2) + y;
end

cnt
x
y