function rtn = sln(xn_1,xn,type)

tmp1 = xn;
tmp2 = xn_1;

ep = 0.0001;
ansf = fnd(xn_1,xn,type);
xn1 = (xn) - ansf(2)*((xn-xn_1)/(ansf(2)-ansf(1)));



i = 1;
arr1 = zeros(100,1);
arr2 = zeros(100,1);
arr3 = zeros(100,1);
arr4 = zeros(100,1);
arr5 = zeros(100,1);

arr1(i) = i;
arr2(i) = round(xn_1*10000)/10000;
arr3(i) = round(ansf(1)*10000)/10000;
arr4(i) = round(0*10000)/10000;
arr5(i) = round(0*10000)/10000;

i=i+1;
arr1(i) = i;
arr2(i) = round(xn*10000)/10000;
arr3(i) = round(ansf(1)*10000)/10000;
arr4(i) = round((ansf(2)-ansf(1))*10000)/10000;
arr5(i) = round(xn1*10000)/10000;

while(abs(xn1-xn)>ep)
    ty = xn;
    xn = xn1;
    xn_1 = ty;
    ansf = fnd(xn_1,xn,type);
    xn1 = (xn) - ansf(2)*((xn-xn_1)/(ansf(2)-ansf(1)));
    i=i+1;    
    arr1(i) = i;
    arr2(i) = round(xn*10000)/10000;
    arr3(i) = round(ansf(1)*10000)/10000;
    arr4(i) = round((ansf(2)-ansf(1))*10000)/10000;
    arr5(i) = round(xn1*10000)/10000;

end

rtn = xn1;

cnt = 0;
diff = zeros(1000,1);

xn  = tmp1;
xn_1 = tmp2

ep = 0.0001;
ansf = fnd(xn_1,xn,type);
xn1 = (xn) - ansf(2)*((xn-xn_1)/(ansf(2)-ansf(1)));
cnt = cnt +1;
diff(cnt) = xn - rtn;

while(abs(xn1-xn)>ep)
    
    cnt = cnt +1;
    diff(cnt) = xn1 - rtn;    
    ty = xn;
    xn = xn1;
    xn_1 = ty;
    ansf = fnd(xn_1,xn,type);
    xn1 = (xn) - ansf(2)*((xn-xn_1)/(ansf(2)-ansf(1)));
    
end

no = arr1(1:cnt,:);
x_n = arr2(1:cnt,:);
f_x_n = arr3(1:cnt,:);
f_x_d = arr4(1:cnt,:);
x_n_1 = arr5(1:cnt,:);
T = table(no,x_n,f_x_n,f_x_d,x_n_1)

x = 0:999;
length(x);
length(diff);

fig = figure();
stem(x,diff);
grid on;
xlim([xn-1,xn+cnt+1]);

xlabel('iterations');
ylabel('difference of xn and root');

saveas(fig,int2str(fng()-'0'),'png');
writetable(T,'temp.txt');
savec = int32(fng());
savec = savec + 1
fns(savec);

end