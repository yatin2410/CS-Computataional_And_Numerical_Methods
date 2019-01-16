x0 = 0.82;
y0 = 2.270500;
x1 = 0.83;
y1 = 2.293319;
x2 = 0.84;
y2 = 2.316367;
%linear interpolation
x = 0:0.001:1.5;

m = (y2-y1)/(x2-x1);
c = y1 - m*x1;x0-x2;
y_linear = m*x + c;

%quadratic interpolation
y_quadratic = y0*(x-x1).*(x-x2)/((x0-x1)*(x0-x2)) + y1*(x-x0).*(x-x2)/((x1-x0)*(x1-x2)) + y2*(x-x1).*(x-x0)/((x2-x1)*(x2-x0));
plot( x, exp(x),x, y_quadratic,x,y_linear);
grid on;
legend('e^x','quadratic','linear')
title('e^x, linear interpolation and quadratic interpolation');