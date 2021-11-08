clc;
clear;

f = @(x) tan(x)*tanh(x)+1;
%fplot(f);
%by fplotf we see first postive zero is between 2 and 3

real_root = fzero(f,2.5);
disp(real_root);

syms x;
f = tan(x)*tanh(x)+1;
root = newtonExact(f,3,real_root,10^-10);
disp(root);
disp(abs(real_root - root));
