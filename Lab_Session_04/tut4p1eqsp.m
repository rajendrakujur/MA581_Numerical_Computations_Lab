clc
clear all
x1=linspace(-1,1,15);
x2=linspace(-1,1,20);
u=linspace(-1,1,30);
g1=(1+(25*x1.^2)).^(-1);
g2=(1+(25*x2.^2)).^(-1);
p1=barycent(x1,g1,u);
p2=barycent(x2,g2,u);
plot(x1,g1,'ok',u,p1,'b--',u,p2,'r*')
legend('f(x)','p15(x)','p20(x)')