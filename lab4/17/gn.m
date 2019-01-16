function out = gn( no,y1,y2 )
%FN Summary of this function goes here
%   Detailed explanation goes here

a = 4;
b = 0.5;
c = 3;
d = 1/3;

if no == 1
    out = a*y1*(1-b*y2);
end

if no == 2
    out = c*y2*(d*y1-1);
end

end

