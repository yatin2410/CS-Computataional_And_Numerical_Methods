clc;
clear all;
close all;

h=0.05;

x=0:h:6;
len=length(x);

y=zeros(1,len);
yy=zeros(1,len);
trap=zeros(1,len);
y(1)=2;
yy(1)=2;
trap(1)=2;



for i=2:len
    temp=y(i-1) + h* ( (y(i-1) + x(i-1)^2 -2)/(x(i-1)+1));
    yy(i)=yy(i-1) + h* ( (yy(i-1) + x(i-1)^2 -2)/(x(i-1)+1));
    y(i)= y(i-1) + (h/2) * ( ( (y(i-1) + x(i-1)^2 -2)/(x(i-1)+1))  + ( (temp + x(i)^2 -2)/(x(i)+1)) );
    
    trap(i) = trap(i-1) + h/2*( (trap(i-1) + x(i-1)^2 -2)/(x(i-1) +1 )  + ( x(i)^2 -2)/( x(i) +1 ) );    
    trap(i) = (trap(i) * ( 2* x(i) + 2) )/ ( 2*x(i) + 2 -h );
end

ori=func10(x);
plot(x,trap);
hold on;
plot(x,y);
hold on;
plot(x,yy);
hold on;
plot(x,ori,'b');
legend('Trapezoidal Method','Heun Method','Euler Method','Analytical solution');
title('h=0.05');

figure();
plot(x,abs(trap-ori) );
hold on;
plot(x,abs(y-ori) );
hold on;
plot(x,abs(yy-ori) );
legend('Trapezoidal Method','Heun Method','Euler Method');
title('Errors for h=0.05');
