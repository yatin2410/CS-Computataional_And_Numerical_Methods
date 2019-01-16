clear all;
close all;
clc;

h=0.05;
x=0:h:10;
y=zeros(1,length(x));
len=length(x);
y(1)=1;

for i=2:len
    y(i)=y(i-1) + h*( -y(i-1) + 2*cos(x(i-1) ) ) + (h*h/2)*( y(i-1) -2*cos(x(i-1)) -2*sin( x(i-1) ) )  ;
end

plot(x,y);
y1=func10(x);
hold on;
plot(x,y1);
title('h=0.05');
legend('Taylor First order','Analytical Solution');

figure();
plot(x,y-y1);
title('error for h=0.05');