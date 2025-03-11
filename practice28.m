% Define symbolic variables
syms x y z

% Define the vector field F
F = [x, y, z];

% Compute the divergence of F
div_F = divergence(F, [x, y, z]);

% Define the limits of the cube
x_limits = [0, 1];
y_limits = [0, 1];
z_limits = [0, 1];

% Compute the volume integral of the divergence
volume_flux = int(int(int(div_F, x, x_limits(1), x_limits(2)), y, y_limits(1), y_limits(2)), z, z_limits(1), z_limits(2));

% Display the result
disp('The outward flux of F through the cube is:');
disp(volume_flux);