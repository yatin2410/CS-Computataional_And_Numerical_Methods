clear all;
close all;
clc;

b = 2;
step = 0.000001;
R = step:step:2;

l = length(R);

q = -b;
r = -4./(R.^2);
s = 3./(R.^4);

h = -(2*q)/3;

P = 3*(h^2) + 4*q*h + (q^2-4*s);
Q = h^3 + 2*q*(h^2) + (q^2-4*s)*h - r.^2;

D = ((Q.^2)/4) + ((P.^3)/27);

A = -(Q./2);
B = sqrt(abs(D));

x = zeros(3,l);
cnt_root = zeros(1,l);

for i=1:1:l
    if D(i)>0
        cnt_root(i)=1;
        x(1,i)=(A(i)+B(i)).^(1/3) + (A(i)-B(i)).^(1/3);
    elseif D(i)==0
        cnt_root(i)=2;
        x(1,i)=2*(A(i)^(1/3));
        x(2,i)=-(A(i)^(1/3));
    else
        cnt_root(i)=3;
        rad = sqrt(A(i)^2 + B(i)^2);
        theta = atan(B(i)/A(i));
        x(1,i)=2*(rad^(1/3))*cos(theta/3);
        x(2,i)=2*(rad^(1/3))*cos((theta+2*pi)/3);
        x(3,i)=2*(rad^(1/3))*cos((theta+4*pi)/3);
    end
end

x_1 = zeros(1,l);

for i=1:1:l
    for j=1:1:cnt_root(i)
        if x(j,i)>=h
            x_1(i)=x(j,i);
            break;
        end
    end
end

X = x_1 + h;

k = sqrt(X);

y = zeros(2,l);
start_index=1;

for i=1:1:l
    L = (q + k(i)^2 - (r(i)/(k(i))))/2;
    M = (q + k(i)^2 + (r(i)/(k(i))))/2;
    d1 = k(i)^2 - 4*L;
    d2 = k(i)^2 - 4*M;
    if d1>=0
        y(1,i) = (-k(i)+sqrt(d1))/2;
        y(2,i) = (-k(i)-sqrt(d1))/2;
    elseif d2>=0
        y(1,i) = (k(i)+sqrt(d2))/2;
        y(2,i) = (k(i)-sqrt(d2))/2;
    else
        start_index=i;
    end
end

plot(R(start_index+1:l),y(1,start_index+1:l),'b');
hold on;
plot(R(start_index+1:l),y(2,start_index+1:l),'b');
hold on;

v1 = 1./(y(1,start_index+1:l).*(R(start_index+1:l).^2));
v2 = 1./(y(2,start_index+1:l).*(R(start_index+1:l).^2));

u_square1 = v1.*(3.*v1-2);
u_square2 = v2.*(3.*v2-2);

v_len = length(v1);

u = zeros(2,v_len);

stop1=v_len;
stop2=v_len;

for i=1:1:v_len
    if u_square1(i)>=0
        u(1,i)=sqrt(u_square1(i));
        if u(1,i)>0
            stop1=i;
        end
    end
    if u_square2(i)>=0
        u(2,i)=sqrt(u_square2(i));
        if u(2,i)>0
            stop2=i;
        end
    end
end

plot(R(start_index+1:start_index+stop1),u(1,1:stop1),'r--');
hold on;
plot(R(start_index+1:start_index+stop2),u(2,1:stop2),'r--');