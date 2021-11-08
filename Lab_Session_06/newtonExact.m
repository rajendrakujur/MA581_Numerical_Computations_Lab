function [x_new,no_iter,err] = newtonExact(f,x0,x_exact,tol)
syms x;

x_new=x0+1;
err=abs(x0 - x_exact);
f_dash=diff(f);
no_iter = 0;
while err > tol
    x_new = x0 - vpa( subs(f,x,x0) / subs(f_dash,x,x0));
    x0 = x_new;
    err=abs(x0 - x_exact);
    no_iter=no_iter + 1;
end

