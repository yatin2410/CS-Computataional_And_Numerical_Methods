function y = func(x,a,b)
    
    if(a == b)
            y = geo_func(x(1,a));
    else 
            y = ( func(x,a+1,b)-func(x,a,b-1) )/(x(1,b)-x(1,a));
    end

end