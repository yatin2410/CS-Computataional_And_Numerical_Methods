clear all;
close all;

%r = 25*(10^9):10^9:7000*(10^9);
%r_scaled = log10(r./(7*(10^8)));
r_scaled = 1.4:0.1:3.6;
l = length(r_scaled);
v = zeros(l,2);
v_scaled = zeros(l,2);
r = (10.^(r_scaled)).*(7*(10^8));

for i=1:1:l
    temp_r = r(i);
    for j=1:0.001:10^5
        temp = astrophy(j,temp_r);
        if temp<0
            s=j;
            break;
        end
    end
    %disp(sprintf('%f',s));
    a = 0.1;
    b = s;
    c = (a+b)/2;
    eps=0.0000000001;
    while (b-c)>eps
        cval = astrophy(c,temp_r);
        aval = astrophy(a,temp_r);
        if aval*cval < 0
            b=c;
        else
            a=c;
        end
        c = (a+b)/2;
    end
    v(i,1)=c;
    v_scaled(i,1)=v(i,1)/Cs(v(i,1),temp_r);
    a = s;
    b = (10^5);
    c = (a+b)/2;
    eps=0.0000000001;
    while (b-c)>eps
        cval = astrophy(c,temp_r);
        aval = astrophy(a,temp_r);
        if aval*cval < 0
            b=c;
        else
            a=c;
        end
        c = (a+b)/2;
    end
    v(i,2)=c;
    v_scaled(i,2)=v(i,2)/Cs(v(i,2),temp_r);
end

figure();
plot(r_scaled,v_scaled(:,1),'r',r_scaled,v_scaled(:,2),'b');
xlabel('Radial Distance');
ylabel('Mach number');
grid on;
