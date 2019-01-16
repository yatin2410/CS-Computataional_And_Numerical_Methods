clc;
clear all;
close all;

x=[0,1,2,3,4,5,6];
y=[2,2.1592,3.1697,5.4332,9.1411,14.406,21.303];

n=length(x);

A=zeros(n-2,n-2);
Y=zeros(n-2,1);
X=zeros(n-2,1);
M=zeros(n,1);   
for i=2:n-1
    if(i==2)
       A(i-1,1)=(x(i+1)-x(i-1))/3;
       A(i-1,2)=(x(i+1)-x(i))/6;
   
    elseif(i==n-1)
       A(i-1,n-2)= (x(i+1)-x(i-1))/3;
       A(i-1,n-3)= (x(i)-x(i-1))/6;
       
    else
        A(i-1,i-2)=(x(i)-x(i-1))/6;
        A(i-1,i-1)=(x(i+1)-x(i-1))/3;
        A(i-1,i)=(x(i+1)-x(i))/6;
    end
    Y(i-1)=(y(i+1)-y(i))/(x(i+1)-x(i)) - (y(i)-y(i-1))/(x(i)-x(i-1));
    
end

%M(2,1)=6;
X=inv(A)*Y;
for i=2:n-1
    M(i)=X(i-1);
end
C=zeros(n-1,1);
D=zeros(n-1,1);

for i=2:n
   C(i-1)=y(i-1)/(x(i)-x(i-1)) - M(i-1)*(x(i)-x(i-1))/6;
   D(i-1)=y(i)/(x(i)-x(i-1)) - M(i)*(x(i)-x(i-1))/6;
    
end

dx=0.001;
xx=[x(1):dx:x(n)];
spline=[];
linear=[];
for i=1:n-1
   if(i<n-1)
       tx=[x(i):dx:x(i+1)-dx];
   else
       tx=[x(i):dx:x(i+1)];
   end
   tmp=(M(i)/(x(i+1)-x(i))).*(((x(i+1)-tx).^3)./6) + (M(i+1)/(x(i+1)-x(i))).*(((tx-x(i)).^3)./6) + C(i).*(x(i+1)-tx) + D(i).*(tx-x(i));
   spline=[spline,tmp];
end

for i=1:n-1
   if(i<n-1)
       tx=[x(i):dx:x(i+1)-dx];
   else
       tx=[x(i):dx:x(i+1)];
   end
   tmp=((tx-x(i+1))./(x(i)-x(i+1))).*y(i) + ((tx-x(i))./(x(i+1)-x(i))).*y(i+1);
    linear=[linear,tmp];
end
figure()
plot(xx,spline);
grid on;
legend('spline interpolation');
