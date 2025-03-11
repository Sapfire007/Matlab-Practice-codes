syms x;
height = x;
length = 20 - 2*x;
width = 12 - 2*x;

v = length * width * height;
v_dx = diff(v,x);
crit_pts = solve(v_dx==0, x);

valid_pts = double(crit_pts);
valid_pts = valid_pts(valid_pts > 0 & valid_pts < 6);
x_values = [0, valid_pts, 6];
volumes = double(subs(v,x,x_values));

[max_volume,idx] = max(volumes);
optimal_x = x_values(idx);

fprintf('The maximum volume of the box is %.2f cubic inches.\n', max_volume);
fprintf('This occurs when x = %.2f inches.\n', optimal_x);
fplot(v, [0 6]);
hold on;
plot(optimal_x, max_volume, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
title('Volume of the Box as a Function of x');
xlabel('Side of Cut Square (x)');
ylabel('Volume (cubic inches)');
grid on;
hold off;