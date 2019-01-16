
x = -5:0.1:5;

y1 = (cos(x));
y2 = (0.5+sin(x));

figure();
plot(x,y1,x,y2);
grid on;
legend('cosx','0.5+sinx');
xlim([-pi,pi]);
ylim([-2,2]);