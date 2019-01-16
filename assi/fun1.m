function out = fun1( in ,rad )
%FUN1 Summary of this function goes here
%   Detailed explanation goes here

G = 6.67 * 1e-11;
M = 2 * 1e30;
ro = 1e-21;
cs = 1e4;
n=2;
lmda = 1.5;

rf = ((pi*G*G*M*M*ro)/(cs^3))*((2/(5-3*lmda))^((5-3*lmda)/(2*lmda-2)));
mu = (rf/(4*pi*ro))*(cs.^(2*n));
out = (in*in)/2 + n*((mu/(in*rad*rad)).^(1/n)) - (G*M)/rad  - n*cs*cs;

end

