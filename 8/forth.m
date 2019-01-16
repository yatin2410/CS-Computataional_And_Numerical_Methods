clear all;
close all;

h = 0.2;
arr1 = zeros(5,1);
arr2 = zeros(5,1);
arr3 = zeros(5,1);
arr4 = zeros(5,1);
arr5 = zeros(5,1);

mans = 1/2;

for j=1:5
    
    h=h*0.5;
    
    arr1(j) = h;
    
    x = [1 1+h];
    y = atan((100*(x.^2))-(199.*x)+100);
    
    ans1 = (y(2)-y(1))/h;
    
    x = [1-h 1+h];
    y = atan((100*(x.^2))-(199.*x)+100);
    
    ans2 = (y(2)-y(1))/(2*h);
    
    arr2(j) = ans1;
    arr3(j) = ans2;
    arr4(j) = abs(ans1-mans);
    arr5(j) = abs(ans2-mans);
    
end

no = arr1(1:5,:);
forward = arr2(1:5,:);
central = arr3(1:5,:);
err_forward = arr4(1:5,:);
err_central = arr5(1:5,:);

T = table(no,forward,central,err_forward,err_central)
writetable(T,'temp.txt');
