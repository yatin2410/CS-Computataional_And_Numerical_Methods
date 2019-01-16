clear all;
close all;

r = 0.7:0.01:2;
b = 2;

yr1 = zeros(length(r),1);
yr2 = zeros(length(r),1);
u = zeros(length(r),1);

j = 0.7;
for i=1:length(r)
   syms y;
   eqn = 0 == (((y^4)*(r(i)^4))-(b*(y^2)*(r(i)^4))-(4*y*r(i)^2) + 3);
   try
   z = solve(eqn,y,'Real',true,'MaxDegree',4);
   q = vpa(z);
   yr1(i) = q(1);
   yr2(i) = q(2);
   catch
   j = i;    
   end
end

figure();
yr1(yr1==0) = nan;
yr2(yr2==0) = nan;

plot(r,yr1,'b',r,yr2,'b');
grid on;
xlim([0.7+((j)*0.01) 2]);
