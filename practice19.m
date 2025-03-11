% Define x values
x = linspace(0, 1, 100);

% Define the curves
upper_curve = x;           % Line y = x
lower_curve = x.^2;        % Parabola y = x^2

% Compute the area between the curves
area = trapz(x, upper_curve - lower_curve);  % Use trapezoidal numerical integration

% Display the result
disp('The area bounded by y = x and y = x^2 in the first quadrant is:');
disp(area);

% Plot the curves
figure;
plot(x, upper_curve, 'r', 'LineWidth', 2); hold on; % y = x in red
plot(x, lower_curve, 'b', 'LineWidth', 2);        % y = x^2 in blue

% Shade the area between the curves
fill([x, fliplr(x)], [upper_curve, fliplr(lower_curve)], 'g', 'FaceAlpha', 0.5, 'EdgeColor', 'none');

% Add labels and title
legend('y = x', 'y = x^2', 'Shaded Area');
title('Curves y = x and y = x^2 with Shaded Area');
xlabel('x');
ylabel('y');
grid on;
hold off;
