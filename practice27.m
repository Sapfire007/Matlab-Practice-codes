% Define symbolic variables
syms x y z

% Define the vector field F
F = [-y, x, 0]; % F = -y i + x j + 0 k

% Compute divergence
div_F = divergence(F, [x, y, z]);

% Display the divergence
disp('The divergence of the vector field F is:');
disp(div_F);

% Verify if divergence is zero
if div_F == 0
    disp('The vector field has zero divergence.');
else
    disp('The vector field does not have zero divergence.');
end