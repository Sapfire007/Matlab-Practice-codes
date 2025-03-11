syms x y z;

% Define the function F(x, y, z)
F = x^2 + y^2 + z^2;

% Compute the triple integral over the region [0, 1] for x, y, and z
integral_value = int(int(int(F, z, 0, 1), y, 0, 1), x, 0, 1);

% Since the volume of the region is 1, the average value is simply the integral value
average_value = integral_value;

% Display the average value
disp('The average value of F(x, y, z) over the region is:');
disp(double(average_value));
