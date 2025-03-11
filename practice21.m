%triple integral ∭_E z dV where E is bounded by the cylinder y ^ 2 + z ^ 2 = 9 and the planes x = 0 y = 3x and z = 0 in the first octant. Solve and give matlab code

syms x y z;

% Define the integrand (z)
integrand = z;

% Set the limits of integration:
% x ranges from 0 to 3
% y ranges from 0 to 3x for each x
% z ranges from 0 to sqrt(9 - y^2) for each y
volume = int(int(int(integrand, z, 0, sqrt(9 - y^2)), y, 0, 3*x), x, 0, 3);

% Display the volume
disp('The volume of the region is:');
disp(double(volume));