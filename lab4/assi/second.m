clear all;
close all;

G = 6.67 * 1e-11;
M = 2 * 1e30;
ro = 1e-21;
cs = 10;

lmda = 1.5;

rf = ((pi*G*G*M*M*ro)/(cs^3))*((2/(5-3*lmda))^((5-3*lmda)/(2*lmda-2)));

r  = 1.6:0.01:3.6;

ep = 1e-10;
root1 = zeros(length(r),1);
root2 = zeros(length(r),1);
j=1;

for i = 1.6:0.1:2.0
    for v = 0 : 0.001 : 100000
        cr = (10^i) * 7 * 1e8;
        if fun1(v,cr) < 0
            v
            fun1(v,cr)
            root1(j) = sln(0,v,cr,ep);
            root2(j) = sln(v,100000,cr,ep);
            break;
        end
    end
    j=j+1;
end


