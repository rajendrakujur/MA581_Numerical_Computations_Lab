clc
clear all
A = floor(10 * rand(6));
y = floor(20*rand(6, 1))- 10;
c = A*y;
x = A\c
U = rref([A c])
