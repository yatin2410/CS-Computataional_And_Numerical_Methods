close all;
clear all;


pair1 = [0.82,2.270500];
pair2 = [0.83,2.293319];
pair3 = [0.84,2.316367];

x = 0.5:0.001:1.5;

out1 = (((x-pair2(1))/(pair1(1)-pair2(1))) * (pair1(2))) + (((x-pair1(1))/(pair2(1)-pair1(1))) * (pair2(2)));
out2 = ((((x-pair2(1)) .* (x-pair3(1)))./((pair1(1)-pair2(1)).*(pair1(1)-pair3(1)))) .* pair1(2)) + ((((x-pair1(1)) .* (x-pair3(1)))./((pair2(1)-pair1(1)).*(pair2(1)-pair3(1)))) .* pair2(2)) + ((((x-pair1(1)) .* (x-pair2(1)))./((pair3(1)-pair2(1)).*(pair3(1)-pair1(1)))) .* pair3(2));
out3 = exp(x);

figure();
plot(x,out1,'r',x,out2,'g',x,out3,'b');
grid on;
legend('lagrange interpolation linear','lagrange interpolation quadric','y=exp(x)');
xlabel('x');
ylabel('y');
