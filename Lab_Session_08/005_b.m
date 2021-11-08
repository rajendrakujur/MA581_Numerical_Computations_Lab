clc
clear all
A = floor(10 * rand(6));
A(:, 3) = A(:, 1 : 2) * [ 4 3 ]';
b = floor(20 * rand(6, 1)) - 10;
rref([A b])
x = A\b
