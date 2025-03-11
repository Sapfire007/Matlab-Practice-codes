syms x y;
f = x*y - (x.^2) - (y.^2) - (2*x) - (2*y) + 4;
f_x = diff(f,x);
f_y = diff(f,y);
[critical_points_x,critical_points_y] = solve([f_x==0,f_y==0],[x,y]);
critical_points = [critical_points_x,critical_points_y];
disp('Critical points : ');
disp(critical_points);
f_xx = diff(f_x,x);
f_yy = diff(f_y,y);
f_xy = diff(f_x,y);
for i = 1:length(critical_points_x)
    xx = subs(f_xx,{x,y},{critical_points_x(i),critical_points_y(i)});
    yy = subs(f_yy,{x,y},{critical_points_x(i),critical_points_y(i)});
    xy = subs(f_xy,{x,y},{critical_points_x(i),critical_points_y(i)});
    D = xx*yy - xy.^2;
    if D > 0 && xx < 0 
        disp(['Points',char(critical_points(i,:)),'is a local maximum.']);
    elseif D > 0 && xx > 0
        disp(['Points',char(critical_points(i,:)),'is a local minimum.']);
    elseif D < 0
        disp(['Points',char(critical_points(i,:)),'is a saddle point']);
    else
        disp(['Points',char(critical_points(i,:)),'is inconclusive.']);
    end
end