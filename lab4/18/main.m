clear all;
close all;

h = 1/40;

x = 0:h:1;
p = -(2.*x)./((1+x.^2));
q = ones(length(x),1);
r = (2./(1+x.^2)) - log(1+x.^2);
n = length(x);
mat = zeros(n-1,n-1);
mat1 = zeros(n-1,1);

p
q
r

for i=1:n-1
    i
   if i~= 1
   mat(i,i-1) = -(1+(h/2)*p(i));
   end
   mat(i,i) = (2+(h^2)*q(i));
   if i ~= n-1
   mat(i,i+1) = ((h/2)*p(i)-1);
   end
   mat1(i) = -(h.^2)*r(i);
end

mat1(n-1) = mat1(n-1) - ((h/2)*p(n-1) -1 )*log(2);

m = pinv(mat)*mat1;


y = log(1+x.^2);

figure();
plot(x(1:n-1),y(1:n-1),'b',x(1:n-1),m,'r');
grid on;

figure();
zz = y';
z = abs(zz(1:n-1)-m);
plot(x(1:n-1),z);
grid on;

