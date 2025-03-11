syms x y z;

% Define the integrand (1 for volume)
integrand = 1;

% Set the limits of integration:
% x ranges from 0 to 2
% y ranges from 0 to 2
% z ranges from 0 to (16 - x^2 - 2*y^2) for each (x, y)
volume = int(int(int(integrand, z, 0, 16 - x^2 - 2*y^2), y, 0, 2), x, 0, 2);

% Display the volume
disp('The volume of the solid is:');
disp(double(volume));