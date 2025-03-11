x = linspace(0,4*pi,100);
y = sin(x);
y1 = exp(-x/3);
y2 = y.*y1;
plot(y2);
stem(y2);