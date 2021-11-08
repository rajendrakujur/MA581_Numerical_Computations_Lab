clc
clear all
A = floor(10 * rand(6));
b = floor(20 * rand(6, 1))-10;
x = A\b;
U = rref([A b]);
U(:, 7) - x
A(:, 3) = A(:, 1 : 2)*[ 4 3 ]'
rref([A,b])
x = A\b
y=floor(20*rand(6, 1))-10
c = A * y
U = rref([A c])
x = A\c
M = [A c]
M(:,3) = 0
w=A\c
c-A*w
