close all;
clear all;

pair1 = [0,-1];
pair2 = [1,-1];
pair3 = [2,7];

x = -1:0.01:3;

out2 = ((((x-pair2(1)) .* (x-pair3(1)))./((pair1(1)-pair2(1)).*(pair1(1)-pair3(1)))) .* pair1(2)) + ((((x-pair1(1)) .* (x-pair3(1)))./((pair2(1)-pair1(1)).*(pair2(1)-pair3(1)))) .* pair2(2)) + ((((x-pair1(1)) .* (x-pair2(1)))./((pair3(1)-pair2(1)).*(pair3(1)-pair1(1)))) .* pair3(2));

figure();
plot(x,out2,'g');
hold on;
xlabel('x');
ylabel('y');
grid on;
legend('lagrange interpolation quadric');

tmp=(pair2(2)-pair1(2))./(pair2(1)-pair1(1));
y = fn3(pair1(1),pair2(1),pair3(1),pair1(2),pair2(2),pair3(2));
y = pair1(2)+((x-pair1(1)).*(tmp))+((x-pair1(1)).*(x-pair1(1)).*(y));
plot(x,y);
legend('Quadratic Langrage Polynomial','Newtons Divided Difference');
hold off