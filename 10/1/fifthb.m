
x = [-5:0.1:5];

a = 0;

while a < 10
y1 = -a .* (x.^2) + (x .^ 4);
y2 = -a .* 2 *(x)+ 4 * (x.^3);
y3 = -a * 2 + (12 * x);

plot(x,y1,'r',x,y2,'b',x,y3,'g');
grid on;
xlabel('x');
ylabel('y = -ax^2 + x^4');
pause(1)
a = a +1;
end


a = 0;

y1 = -a .* (x.^2) + (x .^ 4);
y2 = -a .* 2 *(x)+ 4 * (x.^3);
y3 = -a * 2 + (12 * x);
figure
plot(x,y1,'r',x,y2,'b',x,y3,'g');
grid on;
legend('y = -ax^2 + x^4','y''','y''''');
xlabel('x');
ylabel('y,y'',y''''');