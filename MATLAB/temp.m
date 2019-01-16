function temp(l,r,ep,num,root)

cnt = 0;
mid = zeros(1000,0);

while r-l > ep
   m = l + (r -l)/2;
   if fun1(l,num) * fun1(m,num) < 0
   r = m;
   end
   if fun1(l,num) * fun1(m,num) >= 0
   l = m;
   end
   cnt=cnt+1;
   mid(cnt) = (m - root);
end

x = 0:cnt-1;
length(x)
length(mid)
figure();
plot(x,mid);
xlabel('iteration');
ylabel('difference between mid and root');

end
