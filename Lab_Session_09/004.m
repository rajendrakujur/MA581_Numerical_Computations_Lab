clc
clear all
n = input('Enter n : ');
A = magic(n);
p = randperm(n);
q = randperm(n); 
A = A(p,q);
disp('sum(A) ')
disp(sum(A))
disp("sum(A')' ")
disp(sum(A')')
disp('sum(diag(A)) ')
disp(sum(diag(A)))
disp('sum(diag(flipud(A))) ')
disp(sum(diag(flipud(A))))
disp('rank(A) ')
disp(rank(A))
