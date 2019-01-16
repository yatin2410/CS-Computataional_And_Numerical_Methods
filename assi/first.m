clear all;
close all;

k = 1;

xx = -0.5:0.1:0.5;
x = 1/2 + xx;

yy = k - (4*k/log(2))*((x-0.5).^2);
y = -k * ((x.*log2(x))+((1-x).*(log2(1-x))));

y((length(x)+1)/2)
yy((length(x)+1)/2)

figure();
plot(x,y,'r',x,yy,'b');
legend('<I>','approximate <I>');
grid on;

figure();
plot(x,y-yy);
ylabel('error');
grid on;