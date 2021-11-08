clc
clear all
n=[5,10,15,20,25,30,35,40,45];
l=length(n);
for j=1:10
    x(j)=cos((((2*j)-1)*pi)/(2*10));
end
g=(1+(25*x.^2)).^(-1);
for i=1:l
u=linspace(-1,1,n(i));
p=barycent(x,g,u);
g1=(1+(25*u.^2)).^(-1);
m(i)=max(abs(g1-p));
end
semilogy(n,m)
xlabel('n')
ylabel('max error')