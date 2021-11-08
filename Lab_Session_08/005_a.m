clc
clear all
A = floor(10 * rand(6));
b = floor(20 * rand(6, 1)) - 10;
x = A\b;
U = rref([A b]);
format long
U(:, 7)-x
