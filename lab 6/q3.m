x = [0 1 2];
y = [-1 -1 7];

j=1;
xLQ = x(j):0.01:x(j+2);
yLQ = (((xLQ-x(j+1)).*(xLQ-x(j+2)))/((x(j)-x(j+1))*(x(j)-x(j+2))))*y(j) + (((xLQ-x(j)).*(xLQ-x(j+2)))/((x(j+1)-x(j))*(x(j+1)-x(j+2))))*y(j+1) + (((xLQ-x(j+1)).*(xLQ-x(j)))/((x(j+2)-x(j+1))*(x(j+2)-x(j))))*y(j+2);
plot(xLQ,yLQ);
grid on;
title('Lagrange''s Quadratic Polynomial');
figure();

xNQI = x(j):0.01:x(j+2);
yNQI = y(j) + (xNQI-x(j))*func1(x(1,j:(j+1)),y(1,j:(j+1)),1,2) + (xNQI-x(j)).*(xNQI-x(j+1))*func1(x(1,j:(j+2)),y(1,j:(j+2)),1,3);
plot(xNQI,yNQI);
grid on;
title('Newton''s Divided-difference Quadratic Polynomial');
figure();

plot(xLQ,yLQ-yNQI);
grid on;
title('Difference Graph')