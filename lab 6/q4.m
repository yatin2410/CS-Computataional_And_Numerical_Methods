x = [3.35,3.40,3.50,3.60];
fx = [0.298507,.294118,.285714,.277778];
x1 = 3.35:.00001:3.60;
%linear order
ylin = geo_func(x(1,1)) + (x-x(1,1))*func(x,1,2);
%quadratic
yquad = ylin + (x1-x(1,1)).*(x1-x(1,2))*func(x,1,3);
%third order
y = yquad+ (x1-x(1,1)).*(x1-x(1,2)).*(x1-x(1,3))*func(x,1,4);

plot(x1,y);