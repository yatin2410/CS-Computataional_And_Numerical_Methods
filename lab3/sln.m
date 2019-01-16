function ans1 = sln(l,r,ep,num)

while r-l > ep
   m = l + (r -l)/2;
   if fun1(l,num) * fun1(m,num) < 0
   r = m;
   end
   if fun1(l,num) * fun1(m,num) >= 0
   l = m;
   end
end

ans1 = (l+r)/2;

end