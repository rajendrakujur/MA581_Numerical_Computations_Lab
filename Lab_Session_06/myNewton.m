function [x_new,no_iter,err] = myNewton(f,x0,tol)
syms x;

x_new=x0+1;
err=abs(x_new - x0);
f_dash=diff(f);
no_iter = 0;
while err > tol
    x_new = x0 - vpa( subs(f,x,x0) / subs(f_dash,x,x0));
    err=abs(x_new - x0);
    x0 = x_new;
    no_iter=no_iter + 1;
end

