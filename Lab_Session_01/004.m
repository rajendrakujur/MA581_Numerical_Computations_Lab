A = [4 2 3; 5 8 9; 1 2 4]

if A.^(-1) == 1./A
    disp("B true.")
end
if A^(-1) == 1/A
    disp("A true.")
end
