x = [0 1 2 2.5 3 3.5 4];
y = [2.5 0.5 0.5 1.5 1.5 1.125 0];

plot([x(1) x(2)],[y(1) y(2)],'b',[x(2) x(3)],[y(2) y(3)],'b',[x(3) x(4)],[y(3) y(4)],'b',[x(4) x(5)],[y(4) y(5)],'b',[x(5) x(6)],[y(5) y(6)],'b',[x(6) x(7)],[y(6) y(7)],'b');
grid on;
%hold on;
title('Piecewise Linear Interpolation');
grid on;
figure();
for j=1:2:5
    xLQ = x(j):0.01:x(j+2);
    yLQ = (((xLQ-x(j+1)).*(xLQ-x(j+2)))/((x(j)-x(j+1))*(x(j)-x(j+2))))*y(j) + (((xLQ-x(j)).*(xLQ-x(j+2)))/((x(j+1)-x(j))*(x(j+1)-x(j+2))))*y(j+1) + (((xLQ-x(j+1)).*(xLQ-x(j)))/((x(j+2)-x(j+1))*(x(j+2)-x(j))))*y(j+2);
    plot(xLQ,yLQ,'b');
    hold on;
end
title('Lagrange''s Quadratic Interpolation');
grid on;
figure();
for j=1:2:5
    xNQI = x(j):0.01:x(j+2);
    yNQI = y(j) + (xNQI-x(j))*func1(x(1,j:(j+1)),y(1,j:(j+1)),1,2) + (xNQI-x(j)).*(xNQI-x(j+1))*func1(x(1,j:(j+2)),y(1,j:(j+2)),1,3);
    plot(xNQI,yNQI,'b');
    hold on;
end
title('Newton''s Divided Difference Quadratic Interpolation');
grid on;
figure();

for j=1:2:5
    
    xLQ = x(j):0.01:x(j+2);
    yLQ = (((xLQ-x(j+1)).*(xLQ-x(j+2)))/((x(j)-x(j+1))*(x(j)-x(j+2))))*y(j) + (((xLQ-x(j)).*(xLQ-x(j+2)))/((x(j+1)-x(j))*(x(j+1)-x(j+2))))*y(j+1) + (((xLQ-x(j+1)).*(xLQ-x(j)))/((x(j+2)-x(j+1))*(x(j+2)-x(j))))*y(j+2);
    
    xNQI = x(j):0.01:x(j+2);
    yNQI = y(j) + (xNQI-x(j))*func1(x(1,j:(j+1)),y(1,j:(j+1)),1,2) + (xNQI-x(j)).*(xNQI-x(j+1))*func1(x(1,j:(j+2)),y(1,j:(j+2)),1,3);
    
    plot(xNQI,yLQ-yNQI,'r');
    grid on;
    hold on;
end
title('Difference Graph');

