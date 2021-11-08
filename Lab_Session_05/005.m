f=@(x) 1./(1-(x.^2.*(sin(x)).^2)).^0.5
a=0;
b=pi/2;
for x=0:0.01:pi/2
    I=quad(f,0,x)
end
%plot(I,x,'r*')
