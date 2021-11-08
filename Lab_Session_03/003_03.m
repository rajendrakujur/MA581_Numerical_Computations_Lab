clc
clear all
u=linspace(1,5,10);
x=[1,2,3,4,5];
f=[1,1,2,6,24];
v=polyinterp(x,f,u);
y=gamma(u);
plot(u,v,'b--',u,y,'r*')
xlabel('x');
ylabel('p(x)&gamma(x)');
legend('p(x)','gamma(x)');
