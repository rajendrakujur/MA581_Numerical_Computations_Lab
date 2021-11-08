clc
clear all
for n=1:16
x(n)=10^(-n);
a(n)=(exp(x(n))-1)/log(exp(x(n)));
end
a
