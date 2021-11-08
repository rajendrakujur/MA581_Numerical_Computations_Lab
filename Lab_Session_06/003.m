f=@(x) cot(x)-(x^2-1)/(2*x);
fplot(f);

for i=0.25:0.25:1.5
    fzero(f,i);
end
real_root = fzero(f,1.5);
disp(real_root)

%now lets check with newton
syms x;
f = cot(x)-(x^2-1)/(2*x);
root = myNewton(f,0.5,10^-8);
disp(root);

error = abs(real_root-root);
disp(error);
