% Define symbolic variables
syms x y z

% Define the vector field F
F = [x^2, y^2, z^2];

% Compute the divergence of F
div_F = divergence(F, [x, y, z]);

% Display the result
disp('The divergence of the vector field F(x,y,z) = x^2 i + y^2 j + z^2 k is:');
disp(div_F);
