clear all;
close all;

x = [-5:0.1:5];

y = exp(x);

y1 = 1 + x;
y2 = y1 + ((x.^2)./2);
y3 = y2 + ((x.^3)./6);


figure;
plot(x,y,'r',x,y1,'g',x,y2,'b',x,y3,'c');
grid on;
legend('exp(x)','first deg.','second deg.','third deg.')
xlabel('x')
ylabel('f(x)')
ylim([-10 10]);


y1 = y - y1;
y2 = y - y2;
y3 = y - y3;

figure;
plot(x,y,'r',x,y1,'g',x,y2,'b',x,y3,'y');
grid on;
legend('exp(x)','first deg.','second deg.','third deg.')
xlabel('x');
ylabel('exp(x) - f(x)');
ylim([-10 10]);

