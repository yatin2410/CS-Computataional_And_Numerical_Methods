function [out] = fnd( in ,num)
%FND Summary of this function goes here
%   Detailed explanation goes here
if num ==1
out(1) = (in^6) -in -1;
out(2) = (6*(in^5)) - 1;
end

if num==2 
out(1) = (in^3) - (in^2) - in - 1;
out(2) = (3*(in^2)) - (2*in) -1;
end

if num==3
out(1) = in -1 - (0.3*cos(in));
out(2) = 1 + (0.3*sin(in));
end

if num==4
out(1) = cos(in) - sin(in) - 0.5;
out(2) = -(cos(in)+sin(in));
end

if num==5
out(1) = in - (exp(-in));
out(2) = 1 + (exp(-in));
end

if num==6
out(1) = (exp(-in)) - sin(in) ;
out(2) = -(cos(in)+exp(-in));
end

if num ==7
out(1) = (in^3) - (2*in) -2;
out(2) = (3*(in^2)) - (2);
end

if num == 8
out(1) = (in^4) - in -1;
out(2) = (4*(in^3)) - 1;
end

if num==9
 out(1) = exp(in) - in - 2;
 out(2) = (exp(in)) - 1;
end

if num==10
    out(1) = 1 - in + sin(in);
    out(2) = -1 +cos(in);
end

if num==11
    out(1) = in - tan(in);
    out(2) = 1 - (sec(in)*sec(in)); 
end

if num==12
    out(1) = 0.05 + in .* ((in-1).^2);
    out(2) = (3*(in.^2)) - (4*(in)) + 1;
end

if num==13
    out(1) = 0.1 + in .* ((in-1).^2);
    out(2) = (3*(in.^2)) - (4*(in)) + 1;
end

if num==14
    out(1) =  in .* ((in-1).^2);
    out(2) = (3*(in.^2)) - (4*(in)) + 1;
end



end

