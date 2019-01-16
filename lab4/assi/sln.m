function ans1 = sln(l,r,rad,ep)

while r-l > ep
   m = l + (r -l)/2;
   if fun1(l,rad) * fun1(m,rad) < 0
   r = m;
   end
   if fun1(l,rad) * fun1(m,rad) >= 0
   l = m;
   end
end

ans1 = (l+r)/2;

end