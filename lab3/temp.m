
x = 97:0.001:103;

y1 = tan(x);
y2 = x;

figure();
plot(x,y1);
hold on;
plot(x,y2);
grid on;
%xlim([98,102]);
%ylim([,2]);