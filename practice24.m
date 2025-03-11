%Find upto the 2nd order partial derivative of the function f(x, y) =3x^ 2 + x * y ^ 2 - 2y ^ 3 at (1, 2)

syms x y;

% Define the function
f = 3*x^2 + x*y^2 - 2*y^3;

% First-order partial derivatives
f_x = diff(f, x);
f_y = diff(f, y);

% Second-order partial derivatives
f_xx = diff(f_x, x);
f_yy = diff(f_y, y);
f_xy = diff(f_x, y);

% Evaluate at (1, 2)
point = [1, 2];
f_xx_value = subs(f_xx, [x, y], point);
f_yy_value = subs(f_yy, [x, y], point);
f_xy_value = subs(f_xy, [x, y], point);

% Display results
disp('Second-order partial derivatives at (1, 2):');
fprintf('f_xx = %f\n', double(f_xx_value));
fprintf('f_yy = %f\n', double(f_yy_value));
fprintf('f_xy = %f\n', double(f_xy_value));
