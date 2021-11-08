clc
clear all
n = input('Enter n : ')
A = magic(n);
column_sum = sum(A,1)
row_sum = sum(A,2)
diag_sum = sum(diag(A))
anti_diag_sum = sum(diag(flip(A)))
