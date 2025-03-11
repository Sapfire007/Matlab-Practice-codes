% Define symbolic variables
syms x y z

% Define the vector field F
F = [x*y, y*z, x*z]; % F = xy i + yz j + xz k

% Compute divergence
div_F = divergence(F, [x, y, z]);

% Display the divergence
disp('The divergence of the vector field F is:');
disp(div_F);

% Evaluate divergence at the point (1, 2, 3)
point = [1, 2, 3];
div_at_point = subs(div_F, [x, y, z], point);

disp('The divergence evaluated at (1, 2, 3) is:');
disp(double(div_at_point));