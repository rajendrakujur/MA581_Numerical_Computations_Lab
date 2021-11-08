f=@(x) (exp(-9*x.^2)+exp((-1024)*(x-0.25).^2))/pi^0.5;
a=0;
b=1;
n=100;
h=(b-a)/n;
x=0;
for i=a:h:b
    x=x+f(i+h/2);
end
I1=h*x
x=0:1/100:1;
y= (exp(-9*x.^2)+exp((-1024)*(x-0.25).^2))/pi^0.5;
I2=trapz(x,y)
s=f(a)+f(b);
for i=1:2:n-1
    s=s+4*f(a+i*h);
end
for i=2:2:n-2
    s=s+2*f(a+i*h);
end
I3=h/3 *s
