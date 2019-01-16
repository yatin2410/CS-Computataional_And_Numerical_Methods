clear all;
close all;

x = [-pi:0.1:pi];

y = sin(x);

y1 = x;
y2 = y1 - (((x).^3)./6);
y3 = y2 + (((x).^5)./120);

figure;
plot(x,y,'r',x,y1,'g',x,y2,'b',x,y3,'c');
grid on;
legend('sin(x)','first deg.','third deg.','fifth deg.')
xlabel('x');
ylabel('f(x)');
ylim([-2 2]);

y1 = y - y1;
y2 = y - y2;
y3 = y - y3;

figure;
plot(x,y,'r',x,y1,'g',x,y2,'b',x,y3,'c');
grid on;
legend('sin(x)','first deg.','third deg.','fifth deg.')
xlabel('x');
ylabel('sin(x) - f(x)');
ylim([-2 2]);