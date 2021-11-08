clc
clear all
n=15;
m=20;
for j=1:n
    x(j)=cos((((2*j)-1)*pi)/(2*n));
end
for j=1:m
    y(j)=cos((((2*j)-1)*pi)/(2*m));
end
u=linspace(-1,1,30);
g1=(1+(25*x.^2)).^(-1);
g2=(1+(25*y.^2)).^(-1);
p1=barycent(x,g1,u);
p2=barycent(y,g2,u);
plot(x,g1,'ok',u,p1,'b--',u,p2,'r*')
legend('f(x)','p15(x)','p20(x)')
