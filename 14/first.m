clear all;
close all;


h = 0.2;
x1 = 0:h:6;
y1 = zeros(length(x1),1);
e1 = zeros(length(x1),1);

y11 = zeros(length(x1),1);
e11 = zeros(length(x1),1);


y111 = zeros(length(x1),1);
e111= zeros(length(x1),1);


y1(1) =  1;
y11(1) = 1;
y111(1) = 1;

for i=2:length(x1)
   y1(i) = (1-h) * y1(i-1);
   e1(i) = abs(exp(-x1(i))-y1(i));
end

for i=2:length(x1)
   y11(i) = y11(i-1) + (h/2)*(-y11(i-1)-y1(i));
   e11(i) = abs(exp(-x1(i))-y11(i));
end

for i=2:length(x1)
   y111(i) = ((2-h)/(2+h))^(i-1);
   e111(i) = abs(exp(-x1(i))-y111(i));
end


h = 0.1;
x2 = 0:h:6;

y2 = zeros(length(x2),1);
e2 = zeros(length(x2),1);


y22 = zeros(length(x2),1);
e22 = zeros(length(x2),1);

y222 = zeros(length(x2),1);
e222= zeros(length(x2),1);

y2(1) =  1;
y22(1) = 1;
y222(1) = 1;

for i=2:length(x2)
   y2(i) = (1-h) * y2(i-1); 
   e2(i) = abs(exp(-x2(i))-y2(i));
end


for i=2:length(x2)
   y22(i) = y22(i-1) + (h/2)*(-y22(i-1)-y2(i));
   e22(i) = abs(exp(-x2(i))-y22(i));
end

for i=2:length(x2)
   y222(i) = ((2-h)/(2+h))^(i-1);
   e222(i) = abs(exp(-x2(i))-y222(i));
end

h = 0.05;
x3 = 0:h:6;

y3 = zeros(length(x3),1);
e3 = zeros(length(x3),1);

y33 = zeros(length(x3),1);
e33 = zeros(length(x3),1);

y333 = zeros(length(x3),1);
e333= zeros(length(x3),1);

y3(1) =  1;
y33(1) = 1;
y333(1) = 1;

for i=2:length(x3)
   y3(i) = (1-h) * y3(i-1); 
   e3(i) = abs(exp(-x3(i))-y3(i));
end


for i=2:length(x3)
   y33(i) = y33(i-1) + (h/2)*(-y33(i-1)-y3(i));
   e33(i) = abs(exp(-x3(i))-y33(i));
end

for i=2:length(x3)
   y333(i) = ((2-h)/(2+h))^(i-1);
   e333(i) = abs(exp(-x3(i))-y333(i));
end

x=0:0.01:6;
y = exp(-x);
figure();
plot(x,y,x1,y1,x1,y11,x1,y111);
legend('exp(-x)','h=0.2 euler method','h=0.2 Heun method','h=0.2 trapezoidal method');
grid on;

figure();
plot(x,y,x2,y2,x2,y22,x2,y222);
legend('exp(-x)','h=0.1 euler method','h=0.1 Heun method','h=0.1 trapezoidal method');
grid on;

figure();
plot(x,y,x3,y3,x3,y33,x3,y333);
legend('exp(-x)','h=0.05 euler method','h=0.05 Heun method','h=0.05 trapezoidal method');
grid on;


figure();
plot(x1,e1,x2,e2,x3,e3,x1,e11,x2,e22,x3,e33,x1,e111,x2,e222,x3,e333);
legend('h=0.2 euler','h=0.1 euler','h=0.05 euler','h=0.2 Heun','h=0.1 Heun','h=0.05 Heun','h=0.2 trapezoidal','h=0.1 trapezoidal','h=0.05 trapezoidal');
grid on;

