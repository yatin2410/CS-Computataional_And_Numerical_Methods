function out = fun1( in ,num )
%FUN1 Summary of this function goes here
%   Detailed explanation goes here
if num == 1
out = (in ^ 6) - (in) -1 ;
end

if num==2 
out = (in^3) - (in^2) - in - 1;
end

if num==3
out = in -1 - (0.3*cos(in));
end

if num==4
out = cos(in) - sin(in) - 0.5;
end

if num==5
out = in - (exp(-in));
end

if num==6
out = (exp(-in)) - sin(in) ;
end

if num ==7
out = (in^3) - (2*in) -2;
end

if num == 8
out = (in^4) - in -1;
end

if num==9
 out = exp(in) - in - 2;
end

if num==10
    out = 1 - in + sin(in);
end

if num==11
    out = in - tan(in);
end

end

