clc
clear all
x=[1900,1910,1920,1930,1940,1950,1960,1970,1980];
n=length(x);
for i=1:n
    for j=1:n
        A(i,j)=x(i)^(j-1);
        B(i,j)=(x(i)-1900)^(j-1);
        C(i,j)=(x(i)-1940)^(j-1);
        D(i,j)=((x(i)-1940)/40)^(j-1);
    end
end
A
cond(A)
B
cond(B)
C
cond(C)
D
cond(D)
