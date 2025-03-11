n = 5;
perm = n;
temp = 1;
while(n~=0)
    temp = temp*n;
    n = n-1;
end
fprintf('%d! = %d',perm,temp);