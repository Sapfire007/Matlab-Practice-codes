x = -5:0.2:5
y = -5:0.2:5;
[X,Y] = meshgrid(x,y);
Z=4-X.^2-Y.^2;
surf(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D surface plot of Z = 4 -x^2 -y^2');
grid on;