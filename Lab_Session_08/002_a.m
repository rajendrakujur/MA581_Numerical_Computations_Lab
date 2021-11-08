clc
clear all
n = input('Enter n : ')
A = floor(10*rand(n));
b = sum(A')';
z = ones(n,1);
tic,
    x = A\b;
toc
tic, 
    y = inv(A)*b;
toc
max(abs(x-z))
max(abs(y-z))
