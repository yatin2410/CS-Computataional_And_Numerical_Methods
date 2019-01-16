close all;clc;
x0=1;
x1=4;
y0=1;
y1=2;
x=1:0.01:5;
y=((x-x0).*y1)./(x1-x0) +((x-x1).*y0)./(x0-x1);
plot(x,sqrt(x));
hold on
%plot(x,y);
p=plot(x,y);
%p.MarkerIndices =1;
p.MarkerIndices =2;
legend('sqrt(x)','Linear Interpolation')
hold off