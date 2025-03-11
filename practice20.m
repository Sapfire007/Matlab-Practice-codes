%find the volume of the prism whose base is the triangle in the xy plane bounded by the x-axis and the line y = x and x = 1 and whose top lies in the plane z = f(x,y) = 3 - x - y


syms x y;

% Define the function representing the height of the prism
f = 3 - x - y;

% Set the limits of integration for the triangular region
% x ranges from 0 to 1
% For each x, y ranges from 0 to x (because of the line y = x)
volume = int(int(f, y, 0, x), x, 0, 1);

% Display the volume
disp('The volume of the prism is:');
disp(double(volume));