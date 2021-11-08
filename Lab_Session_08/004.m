clc
clear all
B = eye(9)-triu(ones(9),1)
C = inv(B)
x = C(:, 9)
B(9, 1) = -1/128
B*x
rref(B)
