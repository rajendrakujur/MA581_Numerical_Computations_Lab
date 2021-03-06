clc
clear all
x=[1900,1910,1920,1930,1940,1950,1960,1970,1980];
f=[76000000;92000000;106000000;123000000;132000000;151000000;179000000;203000000;226000000];
n=length(x);
for i=1:n
    for j=1:n
        A(i,j)=((x(i)-1940)/40)^(j-1);
    end
end
a=A\f;
a1=flip(a');
u=linspace(1900,1980,80);
v=polyval(a1,x);
v1=polyval(a1,u);
plot(u,v1,'b--',x,f,'r*');
legend('p(x)','f(x)');
