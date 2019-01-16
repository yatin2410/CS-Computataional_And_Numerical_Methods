close all;clc;
x0=0.82;
x1=0.83;
x2=0.84;
y2=2.316367;
y0=2.270500;
y1=2.293319;
x=0.82:0.00001:0.84;
y=((x-x0).*y1)./(x1-x0) +((x-x1).*y0)./(x0-x1);
plot(x,exp(x));
hold on
plot(x,y);
y=((x-x1).*(x-x2).*y0)./((x0-x1).*(x0-x2))+((x-x0).*(x-x2).*y1)./((x1-x0).*(x1-x2))+((x-x0).*(x-x1).*y2)./((x2-x1).*(x2-x0));
plot(x,y);
legend('exp(x)','Linear Interpolation','Quadratic Interpolation')
hold off