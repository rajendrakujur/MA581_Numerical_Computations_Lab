clc
clear all
A = [1 -1 0 0;
    -1 0 1 0;
    1 0 0 -1;
    0 0 1 -1;
    0 1 0 -1;
    1 1 1 1];

d = [4; 9; 6; 3; 7; 20];

c = A\d;
