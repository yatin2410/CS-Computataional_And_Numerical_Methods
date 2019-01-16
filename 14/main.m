clear all;
close all;


h = 0.2;
x1 = 0:h:6;
y1 = zeros(length(x1),1);
e1 = zeros(length(x1),1);

y1(1) =  1;
y(1) = 1;

for i=2:length(x1)
   y1(i) = (1-h) * y1(i-1);
   e1(i) = abs(exp(-x1(i))-y1(i));
end

h = 0.1;
x2 = 0:h:6;

y2 = zeros(length(x2),1);
e2 = zeros(length(x2),1);

y2(1) =  1;

for i=2:length(x2)
   y2(i) = (1-h) * y2(i-1); 
   e2(i) = abs(exp(-x2(i))-y2(i));
end

h = 0.05;
x3 = 0:h:6;

y3 = zeros(length(x3),1);
e3 = zeros(length(x3),1);

y3(1) =  1;

for i=2:length(x3)
   y3(i) = (1-h) * y3(i-1); 
   e3(i) = abs(exp(-x3(i))-y3(i));
end


x=0:0.01:6;
y = exp(-x);
figure();
plot(x,y,x1,y1,x2,y2,x3,y3);
legend('exp(-x)','h=0.2','h=0.1','h=0.05');
grid on;

figure();
plot(x1,e1,x2,e2,x3,e3);
legend('h=0.2','h=0.1','h=0.05');
grid on;
