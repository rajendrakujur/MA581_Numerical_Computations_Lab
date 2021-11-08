clc
clear all
for p=1:5
    p
    x=10^(-p);
    b=(exp(x)+cos(x)-sin(x)-2)/x^3
end
