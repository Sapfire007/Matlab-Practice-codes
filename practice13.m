syms x x1;
f = (6*(x.^2)) - 5*x + 1;
k = subs(f,x,0.5);
disp(k);

f2 = sin(10*x1);
disp(diff(f2,2));