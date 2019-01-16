function rtn = sln(xn,type)

tmp = xn;
ep = 0.0001;
ansf = fnd(xn,type);
xn1 = (xn) - (ansf(1)/ansf(2));

while(abs(xn1-xn)>ep)
    xn = xn1;
    ansf = fnd(xn,type);
    xn1 = (xn) - (ansf(1)/ansf(2));
end

rtn = xn1;
cnt = 0;
diff = zeros(1000,1);

xn  = tmp;
ep = 0.0001;
ansf = fnd(xn,type);
xn1 = (xn) - (ansf(1)/ansf(2));
cnt = cnt +1;
diff(cnt) = xn - rtn;

while(abs(xn1-xn)>ep)
    
    cnt = cnt +1;
    diff(cnt) = xn1 - rtn;
    
    xn = xn1;
    ansf = fnd(xn,type);
    xn1 = (xn) - (ansf(1)/ansf(2));
    
end

x = 0:999;
length(x);
length(diff);

fig = figure();
plot(x,diff);
grid on;
xlim([0,5]);

xlabel('iterations');
ylabel('difference of xn and root');



% saveas(fig,int2str(fng()-'0'),'png');
% 
% savec = int32(fng());
% savec = savec + 1
% fns(savec);

end