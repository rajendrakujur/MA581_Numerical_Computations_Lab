clc
clear all
n=200;
u=linspace(-2,2,n);
x=linspace(-2,2,25);
f=exp(sin(5.5*x));
v=newton(x,f,u);
%e=f-v;
plot(x,f,'b--',u,v,'r*')
xlabel('x')
ylabel('f(x)')
legend('f(x)','p(x)')
