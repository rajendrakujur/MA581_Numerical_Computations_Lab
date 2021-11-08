g = 9.8065;
k = 0.00341;
f =@(t) log(cosh(t*sqrt(g*k)))/k - 1000 ;
real_root = fzero(f,10);
syms x;
f = log(cosh(x*sqrt(g*k)))/k - 1000;

root = newtonExact(f,25,real_root,10^-5);
disp(abs(real_root - root));
