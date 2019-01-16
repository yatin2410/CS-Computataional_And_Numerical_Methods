x = [-4:0.1:4];
y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);

figure
plot(x,y1,'r',x,y2,'g',x,y3,'b');
xlabel('x');
ylabel('y = sin(x)"r" and y = sin(2x)"g" and y = sin(3x)"b"');

x = [-4:0.1:4];
y = sin(x);
z = sin(x) .* sin(x);

figure
plot(x,y,'g',x,z,'b')
xlabel('x');
ylabel('y = sin(x)"g" and y = sin^2(x)"b"');