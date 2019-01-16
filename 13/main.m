clear all;
close all;

h = [0.1 ;0.05; 0.02; 0.01 ;0.001];
xn = 0.2;
lmd = -100;
yn = exp(lmd*xn);
xf = zeros(length(h),1);
xb = zeros(length(h),1);

for i=1:length(h)
    n = xn/h(i);
    xf(i) = (1+(lmd*h(i)))^n;
    xb(i) = (1-(lmd*h(i)))^(-n);
end

T = table(h,xf,xb);
T
yn