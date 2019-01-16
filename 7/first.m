close all;
clear all;

x = [1,2,3,4];
y = [1,1/2,1/3,1/4];

xx = [(x(3)-x(1))/3,(x(3)-x(2))/6;(x(3)-x(2))/6,(x(4)-x(2))/3];
yy = [((y(3)-y(2))/(x(3)-x(2)))-((y(2)-y(1))/(x(2)-x(1)));((y(4)-y(3))/(x(4)-x(3)))-((y(3)-y(2))/(x(3)-x(2)))];

anss = inv(xx) * yy;

mj = [0 anss(1) anss(2) 0];

c = zeros(4,1);
d = zeros(4,1);

for i=2:4
    c(i) = ((y(i-1)/(x(i)-x(i-1)))-((mj(i-1)/6)*(x(i)-x(i-1))));
    d(i) = ((y(i)/(x(i)-x(i-1)))-((mj(i)/6)*(x(i)-x(i-1))));
end

q = 1:0.1:4;
size(q,2)
s1 = zeros(1,size(q,2));

for j=2:4
   for k=10*(j-1):1:j*10
        i = k/10;
        s1(1,k-9) = (mj(j-1)*(x(j)-x(j-1))*(((x(j)-i)^3)/6))+(mj(j)*(x(j)-x(j-1))*(((i-x(j-1))^3)/6))+(c(j)*(x(j)-i))+(d(j)*(i-x(j-1)));
   end
end

figure();
size(s1,2)
plot(q,s1,'r');
grid on;
hold on;
plot([x(1) x(2)],[y(1) y(2)],'b',[x(2) x(3)],[y(2) y(3)],'b',[x(3) x(4)],[y(3) y(4)],'b');
grid on;
hold off;
legend('cubic spine interpolation','linear interpolation');

y1 = 1./q;

err = abs(y1 - s1);
figure();
plot(q,err);
grid on;