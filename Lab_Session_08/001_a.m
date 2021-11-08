clc
clear all
A = rand(5);
B = rand(5);
A1 = A*B;
A2 = B*A;
A3 = (A'*B')';
A4 = (B'*A')';
A1A2 = A1-A2
A1A3 = A1-A3
A1A4 = A1-A4
A2A3 = A2-A3
A2A4 = A2-A4
A3A4 = A3-A4
