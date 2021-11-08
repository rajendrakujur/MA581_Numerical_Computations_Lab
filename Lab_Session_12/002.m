clc
clear all

A = gallery('kahan', 90, 1.2, 0);
format short e
sig = svd(A)
rank(A)

A = gallery('kahan', 90, 1.2, 25);
format short e
sig = svd(A)
rank(A)

[Q, R, P] = qr(A);
dif = norm(eye(90)-P)

R(90,90)
