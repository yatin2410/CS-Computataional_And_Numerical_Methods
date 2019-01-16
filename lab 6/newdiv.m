function f=newdiv(x,xi,yi,n)
    sz=size(x);
    f=zeros(1,sz(2));
    f=f+yi(1);
    for ix=2:n+1
        p1=zeros(1,sz(2));
        ans=zeros(1,1);
        ans(1,1)=fc(ix,xi,yi);
        p1=p1+ans(1,1);
        for iy=1:ix-1
            p1=p1.*(x-xi(iy));
        end
        f=f+p1;
    end
end