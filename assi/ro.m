function F = ro(v,r)
    G = 6.674*(10^(-11));
    M = 2*(10^30);
    gamma = 1.4;
    Cs_inf = 10^4;
    ro_inf = 10^(-21);
    
    m_dot = ((pi*(G^2)*(M^2)*ro_inf)/(Cs_inf^3))*((2/(5-3*gamma))^((5-3*gamma)/(2*(gamma-1))));
    
    F = m_dot/(4*pi*v*(r^2));
end