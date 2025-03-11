syms x;
upper_curve = x;
lower_curve = (x.^2);
a = 0;
b = 1;
area = int(upper_curve - lower_curve,x,a,b);
disp('The area bounded by y = x and y = x^2 in the first quadrant is:');
disp(double(area));