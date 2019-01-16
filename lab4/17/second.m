clear all;
close all;

h1 = [1,1.5,1.9];

for j = 1:length(h1)
    
    h = 0.005;
    x1 = 0:h:5;
    y1 = zeros(length(x1),1);
    y2 = zeros(length(x1),1);
    e1 = zeros(length(x1),1);

    y1(1) = 3;
    y2(1) = h1(j);
    
    for i=2:length(x1)
       v1 = gn(1,y1(i-1),y2(i-1));
       v11 = gn(2,y1(i-1),y2(i-1));
       v2 = gn(1,y1(i-1)+(h/2)*v1,y2(i-1)+((h/2)*v11));
       v22 = gn(2,y1(i-1)+(h/2)*v1,y2(i-1)+((h/2)*v11));
       v3 = gn(1,y1(i-1)+(h/2)*v2,y2(i-1)+((h/2)*v22));
       v33 = gn(2,y1(i-1)+(h/2)*v2,y2(i-1)+((h/2)*v22));
       v4 = gn(1,y1(i-1)+(h*v3),y2(i-1)+((h)*v33));
       v44 = gn(2,y1(i-1)+(h*v3),y2(i-1)+((h)*v33));
    
       y1(i) = y1(i-1) + (h/6)*(v1+2*v2+2*v3+v4);
       y2(i) = y2(i-1) + (h/6)*(v11+2*v22+2*v33+v44);
    end


    figure();
    plot(x1,y1,x1,y2);
    legend('y1','y2');
    grid on;
    
    figure();
    plot(y1,y2);
    legend('y1 vs y2');
    grid on;
    
end
