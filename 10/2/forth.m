clear all;
close all;

x = [-2*pi:0.1:2*pi];

y = cos(x);

y1 = x + 1;
y1 = y1 - x;
y2 = y1 - (((x).^2)./2);
y3 = y2 + (((x).^4)./24);

figure;
plot(x,y,'r',x,y1,'g',x,y2,'b',x,y3,'c');
grid on;
legend('cos(x)','zero deg.','second deg.','forth deg.')
xlabel('x')
ylabel('f(x)')
ylim([-2 2]);

y1 = y - y1;
y2 = y - y2;
y3 = y - y3;

figure;
plot(x,y,'r',x,y1,'g',x,y2,'b',x,y3,'c');
grid on;
legend('cos(x)','zero deg.','second deg.','forth deg.')
xlabel('x')
ylabel('cos(x) - f(x)')
ylim([-2 2]);
