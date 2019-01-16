x1 = 1;
y1 = 1;
x2 = 4;
y2 = 2;
x = x1:0.001:x2;
y = (x).^(0.5);

m = (y2-y1)/(x2-x1);
c = y1 - m*x1;
y_ = m*x + c;
plot(x,y,x, y_, 'r')
grid on;
title('y = x^{1/2} and linear interpolation');
legend('y = x^{1/2}','y = 0.33x + c');