C=@(t) cos((pi*t.^2)/2)
S=@(t) sin((pi*t.^2)/2)
for x=0:0.01:5
    I1=quad(C,0,x)  
    I2=quad(S,0,x)
end;
%x = linspace(0,5);
%plot(I1,x)
%grid
%X=0:5/100:5;
%Y=cos((pi*X.^2)/2);
%Q=cumtrapz(X,Y)
%plot(Q,x, 'r*')

