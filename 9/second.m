clear all;
close all;

a = [4 3 2 1;3 4 3 2;2 3 4 3;1 2 3 4];
b = [1;1;-1;-1];

for i=1:4
   for j=i+1:4
       tmp = -a(j,i)/a(i,i);
       for k=1:4
           a(j,k) = a(j,k) + tmp*(a(i,k)); 
       end
       b(j,1) = b(j,1) + tmp*(b(i,1));
   end
end

x = size(4,1);

for i=4:-1:1
    sum = 0;
    for j=i+1:1:4
        sum = sum + (x(j)*a(i,j));
    end
    sum = b(i) - sum;
    x(i) = sum / a(i,i);
end

x


