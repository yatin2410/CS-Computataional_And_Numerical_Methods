function y = func1(x,y1,a,b)
    
    if(a == b)
            y = y1(1,a);
    else 
            y = ( func1(x,y1,a+1,b)-func1(x,y1,a,b-1) )/(x(1,b)-x(1,a));
    end

end