x = [0:0.1:2];
y = x .* log(x);
figure;
plot(x,y);
xlabel('x')
ylabel('y = xlog(x)');
grid on;