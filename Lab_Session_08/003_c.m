clc
clear all
A = floor(10*rand(6));
B = A';
A(:, 6) = -sum(B(1:5,:))';
x = ones(6,1);
B = x*[1:6];
C = floor(10*rand(6));
D = B +C;
A*C-A*D
