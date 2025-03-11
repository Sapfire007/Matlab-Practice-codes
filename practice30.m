syms x y z

% Define the components of the vector field F
F_x = y * z;
F_y = x * z;
F_z = x * y;

% Compute the curl of F: ∇ × F = (dFz/dy - dFy/dz) i + (dFx/dz - dFz/dx) j + (dFy/dx - dFx/dy) k
curl_F_x = diff(F_z, y) - diff(F_y, z);
curl_F_y = diff(F_x, z) - diff(F_z, x);
curl_F_z = diff(F_y, x) - diff(F_x, y);

% Display the components of the curl of F
disp('Curl of F:');
curl_F = [curl_F_x, curl_F_y, curl_F_z];
disp(curl_F);

% Evaluate the curl at the point (1,1,1)
curl_at_point = subs(curl_F, {x, y, z}, {1, 1, 1});
disp('Curl of F at (1,1,1):');
disp(curl_at_point);