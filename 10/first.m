clear all;
close all;

a = [9 1 1;2 10 3;3 4 11];
b = [10;19;0];

pinv(a)*b;

n = zeros(3,3);
p = zeros(3,3);

for i=1:3
    for j=1:3
        if i==j
            n(i,j) = a(i,j);
        else
            p(i,j) = -a(i,j);
        end
    end
end

arr1 = zeros(50,1);
arr2 = zeros(50,1);
arr3 = zeros(50,1);
arr4 = zeros(50,1);
arr5 = zeros(50,1);

esum = 1;
cnt = 1;

x = zeros(3,1);
x(1) = 1;
x(2) = -2;
x(3) = 3;
ep = 1e-6;

arr1(cnt) = cnt;
arr2(cnt) = x(1);
arr3(cnt) = x(2);
arr4(cnt) = x(3);
arr5(cnt) = esum;

while esum > ep
   tmp = b + (p*x);
   y = pinv(n) * tmp;
   esum = 0;
   for i=1:3
       esum = esum + abs((y(i,1)-x(i,1)));
   end
   x = y;
   cnt = cnt +1;

    arr1(cnt) = cnt;
    arr2(cnt) = x(1);
    arr3(cnt) = x(2);
    arr4(cnt) = x(3);
    arr5(cnt) = esum;
   
end


x
cnt


no = arr1(1:cnt,:);
x1 = arr2(1:cnt,:);
x2 = arr3(1:cnt,:);
x3 = arr4(1:cnt,:);
error = arr5(1:cnt,:);

T = table(no,x1,x2,x3,error)

a = [9 1 1;2 10 3;3 4 11];
b = [10;19;0];

pinv(a)*b;

n = zeros(3,3);
p = zeros(3,3);

for i=1:3
    for j=1:3
        if i<=j
            n(i,j) = a(i,j);
        else
            p(i,j) = -a(i,j);
        end
    end
end

arr1 = zeros(50,1);
arr2 = zeros(50,1);
arr3 = zeros(50,1);
arr4 = zeros(50,1);
arr5 = zeros(50,1);

x = zeros(3,1);
x(1) = 1;
x(2) = -2;
x(3) = 3;
ep = 1e-6;
esum = 1;
cnt = 1;


arr1(cnt) = cnt;
arr2(cnt) = x(1);
arr3(cnt) = x(2);
arr4(cnt) = x(3);
arr5(cnt) = esum;

while esum > ep
   tmp = b + (p*x);
   y = pinv(n) * tmp;
   esum = 0;
   for i=1:3
       esum = esum + abs((y(i,1)-x(i,1)));
   end
   x = y;
   cnt = cnt +1;
   
    arr1(cnt) = cnt;
    arr2(cnt) = x(1);
    arr3(cnt) = x(2);
    arr4(cnt) = x(3);
    arr5(cnt) = esum;
end


x
cnt


no = arr1(1:cnt,:);
x1 = arr2(1:cnt,:);
x2 = arr3(1:cnt,:);
x3 = arr4(1:cnt,:);
error = arr5(1:cnt,:);

T = table(no,x1,x2,x3,error)