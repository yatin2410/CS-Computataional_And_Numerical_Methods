close all;
clear all;

x = [0,1,2,2.5,3,3.5,4];
y = [2.5,0.5,0.5,1.5,1.5,1.125,0];
xx = zeros(size(x,2)-2,5);
yy = zeros(size(y,2)-2,1);
n = 6;
for i=2:n
    if i==2
      xx(i-1,1:2) = [(x(i+1)-x(i-1))/3,(x(i+1)-x(i))/6];  
    else if i==n
        xx(i-1,4:5) = [(x(i)-x(i-1))/6,(x(i+1)-x(i-1))/3];
        else
            xx(i-1,i-2:i) = [(x(i)-x(i-1))/6,(x(i+1)-x(i-1))/3,(x(i+1)-x(i))/6];
        end
    end
end

for i=2:n
    yy(i-1,1) = ((y(i+1)-y(i))/(x(i+1)-x(i)))-((y(i)-y(i-1))/(x(i)-x(i-1)));
end

anss = inv(xx) * yy

mj = [0 anss(1) anss(2) anss(3) anss(4) anss(5) 0];


c = zeros(7,1);
d = zeros(7,1);

for i=2:7
    c(i) = ((y(i-1)/(x(i)-x(i-1)))-((mj(i-1)/6)*(x(i)-x(i-1))));
    d(i) = ((y(i)/(x(i)-x(i-1)))-((mj(i)/6)*(x(i)-x(i-1))));
end

s1 = zeros(7000,1);
k=1;
for i=2:7
    tmp = x(i-1):0.001:x(i);
    for j=1:size(tmp)
        s1(k)=(mj(i-1)*(x(i)-x(i-1))*(((x(i)-tmp(j))^3)/6))+(mj(i)*(x(i)-x(i-1))*(((tmp(j)-x(i-1))^3)/6))+(c(i)*(x(i)-tmp(j)))+(d(i)*(tmp(j)-x(i-1)))
        k=k+1;
    end
end

s1=s1';
s1
size(0:0.001:7-0.001)
size(s1)
figure();
plot(0:0.001:7-0.001,s1);
grid on;
legend('cubic spine interpolation');
