x = [-5:0.1:5];

a= 0;
while a < 10
y1 = -a .*x + (x .^ 3);
y2 = -a + 3 * (x.^2);
y3 = 6 * x;

plot(x,y1,'r',x,y2,'b',x,y3,'g');
grid on;
xlabel('x');
ylabel('y = -ax + x^3');
pause(1)
a = a +1;
end


a = 0;


y1 = -a .*x + (x .^ 3);
y2 = -a + 3 * (x.^2);
y3 = 6 * x;

figure
plot(x,y1,'r',x,y2,'b',x,y3,'g');
grid on;
legend('y = -ax + x^3','y''','y''''');
xlabel('x');
ylabel('y,y'',y''''');