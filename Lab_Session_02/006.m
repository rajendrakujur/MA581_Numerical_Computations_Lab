clc
clear all
x=[11/2,61/11];
for i=2:12
x(i+1)=111-(1130-(3000/x(i-1)))/x(i);
end
a=round(x(13),4)
