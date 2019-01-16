clear all;
close all;

a = [1 2 1; 2 2 3;-1 -3 0];
b = [0;3;2];

for i=1:3
   for j=i+1:3
       tmp = -a(j,i)/a(i,i);
       for k=1:3
           a(j,k) = a(j,k) + tmp*(a(i,k)); 
       end
       b(j,1) = b(j,1) + tmp*(b(i,1));
   end
end

x = size(3,1);

for i=3:-1:1
    sum = 0;
    for j=i+1:1:3
        sum = sum + (x(j)*a(i,j));
    end
    sum = b(i) - sum;
    x(i) = sum / a(i,i);
end

x


