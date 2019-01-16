function F = astrophy(v,r)
    G = 6.674*(10^(-11));
    M = 2*(10^30);
    n = 2.5;
    gamma = 1.4;
    Cs_inf = 10^4;
    ro_inf = 10^(-21);
    
    m_dot = ((pi*(G^2)*(M^2)*ro_inf)/(Cs_inf^3))*((2/(5-3*gamma))^((5-3*gamma)/(2*(gamma-1))));
    mu_dot = (m_dot*(Cs_inf^(2*n)))/(4*pi*ro_inf);
    
    F = ((v^2)/2) + n*((mu_dot/(v*(r^2)))^(1/n)) - ((G*M)/r) - n*(Cs_inf^2);
end