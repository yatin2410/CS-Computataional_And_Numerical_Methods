clear all;
close all;
n=1;

arr1 = zeros(10,1);
arr2 = zeros(10,1);
arr3 = zeros(10,1);
arr4 = zeros(10,1);
arr5 = zeros(10,1);
mans = sqrt(pi)/2;

for j=1:10
    n= n*2;
    
    arr1(j) = n;
    
    a = 0;
    b = 2;

    h = (b-a)/n;

    x = a:h:b;

    y = atan(1+(x.^2));
    y(1) = y(1)/ 2;
    y(length(y)) = y(length(y)) /2;
    ans1 = h * sum(y);
    arr2(j) = ans1;

    x = a:h:b;
    y1 = atan(1+(x.^2));
    ans2 = y1(1);
    ans2 = ans2 + y1(length(y1));

    for i=2:length(x)-1
        if(mod(i,2)==0)
            ans2 = ans2 + (4*y1(i));    
        end
        if(mod(i,2)==1)
            ans2 = ans2 + (2*y1(i));    
        end
    end
    ans2 = (h/3) .* ans2;
    arr3(j) = ans2;
    arr4(j) = abs(ans1-mans);
    arr5(j) = abs(ans2-mans);
    
end

no = arr1(1:10,:);
T_n = arr2(1:10,:);
S_n = arr3(1:10,:);
err_T_n = arr4(1:10,:);
err_S_n = arr5(1:10,:);

T = table(no,T_n,S_n)
writetable(T,'temp.txt');
