clc
clear all
A = rand(8);
max_in_column = max(A)
max_in_row = max(A')
max_overall = max(max(A))
fprintf('Index having values > 0.25 : ')
disp(find(A>0.25))
