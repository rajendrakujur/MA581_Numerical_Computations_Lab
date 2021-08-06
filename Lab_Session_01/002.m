n = input("Enter matrix size:")
A = magic(n)
column_sum = sum(A);
row_sum = sum(A');
diag_sum = sum(diag(A));
anti_diag_sum = sum(diag(flip(A)));
if column_sum == row_sum'
    if column_sum(1,1) == diag_sum 
        if diag_sum == anti_diag_sum
            disp("All summation properties have been verified.")
        end
    end
end
