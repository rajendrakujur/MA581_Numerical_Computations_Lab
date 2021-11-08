clc
clear all
x = 0.23371258e-4;
y = 0.33678429e2;
z = -0.33677811e2;
a=round(x+round(y+z,8),8)
b=round(round(x+y,8)+z,8)
ex=x+y+z
r1=(ex-a)/ex
r2=(ex-b)/ex
