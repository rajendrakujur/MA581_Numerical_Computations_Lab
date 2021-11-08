clc
x=0.4:0.4:1.6;
y=[-0.92 -0.22 0.18 0.47];

%root using inverse interpolation
root = polyinterp(y,x,0)
error=abs(root-1)

%using newton
syms x;
[root,n,error] = newtonExact(log(x),1.2,1,10^-6)

%error in root finding using inverse polynomial is much more than newton
%though we set tol to 10^-6 in newton we got answer just in 3 iterations
