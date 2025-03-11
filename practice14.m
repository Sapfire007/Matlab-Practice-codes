syms x;
f = x.^3 - (6*(x.^2)) + 9*x + 15;
f_dx = diff(f,x);
f_ddx = diff(f_dx,x);
crit_pts = solve(f_dx==0,x);
for i = 1:length(crit_pts)
    cp = crit_pts(i);
    secnd_dx = subs(f_ddx,x,cp);

    if secnd_dx > 0
        fprintf('x = %.2f is a local minimum.\n',double(cp));
    elseif secnd_dx < 0
        fprintf('x = %.2f is a local maximum.\n',double(cp));
    else
        fprintf('x = %.2f is a saddle point.\n',double(cp));
    end
end
fplot(f, [-10 10]);
hold on;
plot(double(crit_pts), double(subs(f, x, crit_pts)), 'ro');
hold off;

title('Function with Critical Points');
xlabel('x');
ylabel('f(x)');
grid on;