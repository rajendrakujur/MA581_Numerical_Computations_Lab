function v=newton(x,f,u)
n=length(x);
m=length(u);
for i=1:n
    D(i,1)=f(i);
end
for j=2:n
    for i=j:n
        D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
for j=1:m
    prod=1;
    sum=D(1,1);
    for i=2:1:n
        prod=prod*(u(j)-x(i-1));
        sum=sum+prod*D(i,i);
    end
    v(j)=sum;
end