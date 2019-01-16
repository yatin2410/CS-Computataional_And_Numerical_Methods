close all;
clear all;

pair1 = [1,1];
pair2 = [4,2];

x = 0:0.1:6;

out1 = (((x-pair2(1))/(pair1(1)-pair2(1))) * (pair1(2))) + (((x-pair1(1))/(pair2(1)-pair1(1))) * (pair2(2)));
out2 = sqrt(x);

figure();
plot(x,out1,'r',x,out2,'g');
grid on;
legend('lagrange interpolation','y=sqrt(x)');
xlabel('x');
ylabel('y');