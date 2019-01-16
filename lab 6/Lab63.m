close all;
clc;
x0=0;
x1=1;
x2=2;
y0=-1;
y1=-1;
y2=7;
x=0:0.001:2;
y=((x-x1).*(x-x2).*y0)./((x0-x1).*(x0-x2))+((x-x0).*(x-x2).*y1)./((x1-x0).*(x1-x2))+((x-x0).*(x-x1).*y2)./((x2-x1).*(x2-x0));
plot(x,y);
hold on
temp=y1-y0./(x1-x0);
y=fn3(x0,x1,x2,y0,y1,y2);
y=y0+(x-x0).*(temp)+(x-x0).*(x-x1).*(y);
plot(x,y);
legend('Quadratic Langrage Polynomial','Newtons Divided Difference');
hold off