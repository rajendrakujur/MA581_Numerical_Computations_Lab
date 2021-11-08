f=@(x) 4./(1+x.^2)
I1=integral(f,0,1);
I1
a=0;
b=1;
n=100;
h=(b-a)/n;
x=0;
for i=a:h:b
    x=x+f(i+h/2);
end
I2=h*x
x=0:1/100:1;
y= 4./(1+x.^2);
I3=trapz(x,y)
s=f(a)+f(b);
for i=1:2:n-1
    s=s+4*f(a+i*h);
end
for i=2:2:n-2
    s=s+2*f(a+i*h);
end
I4=h/3 *s


%ExtInt = ((sqrt(b^2 - c^2)) - (abs(c)*asec(b/c))) - ((sqrt(a^2 - c^2)) - (abs(c)*asec(a/c)));
%I1 = ExtInt*ones(1,100);
%plot(I2,'-ob');hold on;
%plot(I3,'-r','linewidth',2);hold on;
%plot(I4,'-sm','linewidth',2);hold on;
%plot(I1,'*k');hold on;
%legend('Midpoint','Trapeziodal','Simpson','Real Value');
%title('Implementation of Mid point, Trapeziodal and Simpson Rule','fontsize',14);
%xlabel('Number of Interval->','fontsize',14);
%ylabel ('Error Events ->','fontsize',14);
%grid on;
