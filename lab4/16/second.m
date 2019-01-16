clear all;
close all;


h1 = [0.1;0.05;0.025;0.0125;0.00625];
for j = 1:length(h1)
    
    h = h1(j);
    x1 = 0:h:5;
    y1 = zeros(length(x1),1);
    e1 = zeros(length(x1),1);

    y11 = zeros(length(x1),1);
    e11 = zeros(length(x1),1);

    y1(1) =  0;
    y11(1) =  0;

    
    for i=2:length(x1)
       y1(i) = y1(i-1) + (h/2) * (gn(x1(i-1),y1(i-1))+gn(x1(i-1)+h,y1(i-1)+h*gn(x1(i-1),y1(i-1))));
       e1(i) = abs((x1(i)^(1.1))-y1(i));
    end


    for i=2:length(x1)
       v1 = gn(x1(i-1),y11(i-1));
       v2 = gn(x1(i-1)+(h/2),y11(i-1)+((h/2)*v1));
       v3 = gn(x1(i-1)+(h/2),y11(i-1)+((h/2)*v2));
       v4 = gn(x1(i-1)+(h),y11(i-1)+((h)*v3));
       y11(i) = y11(i-1) + (h/6)*(v1+2*v2+2*v3+v4);
       e11(i) = abs((x1(i)^(1.1))-y11(i));
    end


    figure();
    plot(x1,e1,x1,e11);
    legend('second order','forth order');
    grid on;

end

x=0:h:5;
y = x.^(1.1);

figure();
plot(x,y,x1,y1,x1,y11);
legend('y','second order','forth order');
grid on;

