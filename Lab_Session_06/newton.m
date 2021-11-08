function [xnplus1,n] = newtonq1(a,xn,tol)
n = 0;    
xnplus1 = xn;
while abs(xnplus1 - sqrt(a)) >= tol
    xnplus1 = 0.5*(xn + (a/xn));
    n = n + 1;
    xn = xnplus1;
end
