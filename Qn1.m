x = -5:0.2:5;
y = exp(-x/3).*sin(x);
plot(x,y);
title('This is the graph for the equation:(e^(-x/3))*(sin x)');
xlabel('x');
ylabel('(e^(-x/3))*(sin x)');
grid on;