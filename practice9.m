x = 12;
if (x>=18)
    disp('Yes you can vote');
elseif (x<18 & x>0)
    fprintf('No you are underage, you can vote after %d years.\n',18-x);
else
    disp('Invalid input');
end