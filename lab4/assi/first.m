clear all;
close all;

k = 2;

x = 0:0.001:1;

y = -k * ((x.*log2(x))+((1-x).*(log2(1-x))));

figure();
plot(x,y);
grid on;

yy = (k/(log(4))) - (((4*k)/log(4))* (((x-(1/2))).^2));

figure();
plot(x,yy);
grid on;

figure();
plot(x,y-yy);
grid on;