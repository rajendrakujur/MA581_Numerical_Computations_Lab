% iteration
clc
syms x
f=@(x) cos(x) + 1/(1 + exp(-2*x));

format long

mat = fzero(f , 3);

x=3;
i=1;
err=abs(x-mat);
iter=0;

while err > 10^(-10)
    x_new = acos(-1/(1 + exp(-2*x)));
    x=x_new;
    err=abs(x-mat);
    iter=iter+1;
end

root1 = x; 
disp(root1);
disp(iter);
disp(abs(mat-root1));

syms x;

f=cos(x) + 1/(1 + exp(-2*x));

[root2,iter]=newtonExact(f,3,mat,10^-10);
disp(root2);
disp(iter);
disp(abs(mat-root2));

% newton gives better result in less iterations
