y0 = 2;
a = 3;
mu = 1;

x = [-5:0.1:5];
y = (exp(-1.*a.*(x-mu).*(x-mu))) .* y0;

figure
plot(x,y);
grid on;
xlabel('x');
ylabel('Gaussian Function');

v = 0.5;
t =0;

while t<10

y0 = 2;
a = 3;
mu = v * t;

x = [-5:0.1:5];
y = (exp(-1.*a.*(x-mu).*(x-mu))) .* y0;
plot(x,y);
grid on;
xlabel('x');
ylabel('Gaussian Function');
pause(1);
t = t +1;
end

y0 = 1;
a = 1;
mu = 0;
x = [-5:0.1:5];
y1 = (exp(-1.*a.*(x-mu).*(x-mu))) .* y0;
y2 = (1)./(1.+(x.*x));
figure
plot(x,y1,'r',x,y2,'b');
grid on;
legend('gaussian function','lorentz function');
xlabel('x');
ylabel('Gaussian Function and lorentz function');

x = [0:0.1:10];
y1 = (exp(-1.*a.*(x-mu).*(x-mu))) .* y0;
y2 = (1)./(1.+(x.*x));
y = y2-y1;
figure
plot(x,y);
grid on;
xlabel('x');
ylabel('difference of Gaussian Function and lorenz function');