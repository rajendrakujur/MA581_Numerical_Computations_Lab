function v = polyinterp(x, f, u)
n=length(x);
m=length(u);
for k=1:m
    sum=0;
    for i=1:n
        p=1;
        for j=1:n
            if j~=i
                p=p*(u(k)-x(j))/(x(i)-x(j));
            end
        end
        sum=sum+f(i)*p;
    end
    v(k)=sum;
end
v;
end