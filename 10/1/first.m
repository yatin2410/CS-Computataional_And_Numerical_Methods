x = [-2:0.1:2];
y = exp(x);

figure
plot(x,y)
xlabel('x');
ylabel('y = exp(x)');


x = [-2:0.1:2];
y = (x);

figure
plot(x,y)
xlabel('x');
ylabel('y = x');


x = [0:0.1:2];
y = log(x);

figure
plot(x,y)
xlabel('x');
ylabel('y = ln(x)');

x = [-2:0.1:2];
y = exp(x);
z = exp(-x);

figure
plot(x,y,'g',x,z,'b')
xlabel('x');
ylabel('y = exp(x) and y = exp(-x)');
