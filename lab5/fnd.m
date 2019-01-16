function [out] = fnd( in,in1 ,num)
%FND Summary of this function goes here
%   Detailed explanation goes here
if num ==1
out(1) = (in^6) -in -1;
out(2) = (in1^6) -in1 -1;
end

if num==2 
out(1) = (in^3) - (in^2) - in - 1;
out(2) = (in1^3) - (in1^2) - in1 - 1;
end

if num==3
out(1) = in -1 - (0.3*cos(in));
out(2) = in1 -1 - (0.3*cos(in1));
end

if num==4
out(1) = cos(in) - sin(in) - 0.5;
out(2) = cos(in1) - sin(in1) - 0.5;
end

if num==5
out(1) = in - (exp(-in));
out(2) = in1 - (exp(-in1));
end

if num==6
out(1) = (exp(-in)) - sin(in) ;
out(2) = (exp(-in1)) - sin(in1) ;
end

if num ==7
out(1) = (in^3) - (2*in) -2;
out(2) = (in1^3) - (2*in1) -2;
end

if num == 8
out(1) = (in^4) - in -1;
out(2) = (in1^4) - in1 -1;
end

end

