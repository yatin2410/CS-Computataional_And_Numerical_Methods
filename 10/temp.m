clear all;
close all;

x = -10:0.01:10;

y = sqrt((9-(x.^2))/4);
y1 = -y;

figure();
plot(x,y,'b',x,y1,'b');
grid on;

x = -20:0.01:20;

y = (14*(x.^2) - 45 )/18;

figure();
plot(x,y);
grid on;



