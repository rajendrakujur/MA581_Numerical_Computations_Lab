clc
clear all
n=3;
y = n;
while n > 1
if rem(n,2)==0
n = n/2;
else
n = 3*n+1;
end
y = [y n]
end
