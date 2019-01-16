clear all;
close all;

x = [0:0.1:10];

y = log(x);

y1 = x -1;
y2 = y1 - (((x-1).^2)./2);
y3 = y2 + (((x-1).^3)./3);

figure;
plot(x,y,'r',x,y1,'g',x,y2,'b',x,y3,'c');
grid on;
legend('log(x)','first deg.','second deg.','third deg.')
xlabel('x')
ylabel('f(x)')
ylim([-2 2]);

y1 = y - y1;
y2 = y - y2;
y3 = y - y3;

figure;
plot(x,y,'r',x,y1,'g',x,y2,'b',x,y3,'c');
grid on;
legend('log(x)','first deg.','second deg.','third deg.')
xlabel('x');
ylabel('log(x) - f(x)');
ylim([-2 2]);