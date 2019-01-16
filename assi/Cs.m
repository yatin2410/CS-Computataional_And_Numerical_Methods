function F = Cs(v,r)
    gamma = 1.4;
    Cs_inf = 10^4;
    ro_inf = 10^(-21);
    
    F = Cs_inf*((ro(v,r)/ro_inf)^((gamma-1)/2));
end