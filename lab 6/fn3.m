function y=fn3(x0,x1,x2,y0,y1,y2)
y=y0./((x0-x1).*(x0-x2))+y1./((x1-x0).*(x1-x2))+y2./((x2-x1).*(x2-x1));
end