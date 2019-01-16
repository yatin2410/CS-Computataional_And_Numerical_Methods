function f = P(n,x,xi,yi)
    s=size(x);
    f = zeros(1,s(2));
        for k=1:n+1
            L = ones(1,s(2));
            for in=1:n+1
               if in~=k
                L = L.*((x-xi(in))./(xi(k)-xi(in)));
               end
            end
            
           f=f+(yi(k).*L); 
        end
end