clear all;
close all;


h = 0.1;
x1 = 0:h:10;
y1 = zeros(length(x1),1);
e1 = zeros(length(x1),1);

y11 = zeros(length(x1),1);
e11 = zeros(length(x1),1);

y1(1) =  1;
y11(1) =  1;


for i=2:length(x1)
   y1(i) = y1(i-1) + h*(-y1(i-1)+(2*cos(x1(i-1))));
   e1(i) = abs(sin(x1(i))+cos(x1(i))-y1(i));
end


for i=2:length(x1)
   y11(i) = y11(i-1) + h*(-y11(i-1)+(2*cos(x1(i-1)))) + ((h^2)/2)*(y11(i-1)-(2*cos(x1(i-1)))-(2*sin(x1(i-1))));
   e11(i) = abs(sin(x1(i))+cos(x1(i))-y11(i));
end


h = 0.05;
x2 = 0:h:10;

y2 = zeros(length(x2),1);
e2 = zeros(length(x2),1);

y22 = zeros(length(x2),1);
e22 = zeros(length(x2),1);


y2(1) =  1;
y22(1) =  1;


for i=2:length(x2)
   y2(i) = y2(i-1) + h*(-y2(i-1)+(2*cos(x2(i-1))));
   e2(i) = abs(sin(x2(i))+cos(x2(i))-y2(i));
end


for i=2:length(x2)
   y22(i) = y22(i-1) + h*(-y22(i-1)+(2*cos(x2(i-1)))) + ((h^2)/2)*(y22(i-1)-(2*cos(x2(i-1)))-(2*sin(x2(i-1))));
   e22(i) = abs(sin(x2(i))+cos(x2(i))-y22(i));
end



x=0:0.01:10;
y = sin(x) + cos(x);
figure();
plot(x,y,x1,y1,x1,y11,x2,y2,x2,y22);
legend('sin(x)+cos(x)','h=0.1 first order','h=0.1 second order','h=0.05 first order','h=0.05 second order');
grid on;

figure();
plot(x1,e1,x2,e2,x1,e11,x2,e22);
legend('h=0.1 first order','h=0.05 first order','h=0.1 second order','h=0.05 second order');
grid on;                