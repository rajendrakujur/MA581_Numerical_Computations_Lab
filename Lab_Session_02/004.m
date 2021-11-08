clc
clear all
x=10^(-10);
y=pi/2;
z=y;
e=5;
f=e;

a=round(sqrt(x+1)-sqrt(x),5)
a1=1/(sqrt(x+1)+sqrt(x));
a1=round(a1,5)

b=round(sin(y)-sin(z),5)
b1=2*cos((y+z)/2)*sin((y-z)/2);
b1=round(b1,5)

c=round((1-cos(x))/sin(x),5)
c1=round(sin(x)/(1+cos(x)),5)

d=sqrt((e*e)+(f*f)-(2*e*f*cos(x)));
d=round(d,5)
