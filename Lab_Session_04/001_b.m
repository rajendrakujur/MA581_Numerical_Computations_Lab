clc
clear all
n=[5,10,15,20,25,30,35,40,45];
l=length(n);
x=linspace(0,2*pi,10);
h=exp(cos(6*x));
for i=1:l
     u=linspace(0,2*pi,n(i));
     v=barycent(x,h,u);
     g=exp(cos(6*u));
     m(i)=max(abs(g-v));
end
semilogy(n,m)
xlabel('n')
ylabel('max error')    
