function rtn = sln(xn,type)

tmp = xn;
ep = 0.0001;
ansf = fnd(xn,type);
xn1 = (xn) - (ansf(1)/ansf(2));
i = 0;
arr1 = zeros(100,1);
arr2 = zeros(100,1);
arr3 = zeros(100,1);
arr4 = zeros(100,1);
arr5 = zeros(100,1);
i=i+1;

arr1(i) = i;
arr2(i) = round(xn*1000)/1000;
arr3(i) = round(ansf(1)*1000)/1000;
arr4(i) = round(ansf(2)*1000)/1000;
arr5(i) = round(xn1*1000)/1000;

while(abs(xn1-xn)>ep)
    
    xn = xn1;
    ansf = fnd(xn,type);
    xn1 = (xn) - (ansf(1)/ansf(2));    
    i=i+1;
    arr1(i) = i;
    arr2(i) = round(xn*1000)/1000;
    arr3(i) = round(ansf(1)*1000)/1000;
    arr4(i) = round(ansf(2)*1000)/1000;
    arr5(i) = round(xn1*1000)/1000;

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
strarr = {'1.txt','2.txt','3.txt','4.txt','5.txt','6.txt','7.txt','8.txt','9.txt','10.txt','11.txt','12.txt','13.txt','14.txt','15.txt'};
writetable(T,'temp.txt');
savec = int32(fng());
savec = savec + 1
fns(savec);

end