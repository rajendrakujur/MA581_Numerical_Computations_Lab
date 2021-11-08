clc
clear all
n=15;
m=20;
for j=1:n
    x(j)=pi*cos((((2*j)-1)*pi)/4*n)*cos((((2*j)-1)*pi)/4*n);
end
for j=1:m
    y(j)=pi*cos((((2*j)-1)*pi)/4*m)*cos((((2*j)-1)*pi)/4*m);
end
u=linspace(0,2*pi,30);
g1=exp(cos(6*x));
g2=exp(cos(6*y));
p1=barycent(x,g1,u);
p2=barycent(y,g2,u);
plot(x,g1,'ok',u,p1,'b--',u,p2,'r*')
legend('f(x)','p15(x)','p20(x)')