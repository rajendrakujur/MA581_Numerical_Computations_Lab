clc;
t = (linspace(-1,1,50))';
f = @(t) (1+25.*t.^2).^-1;
ft = (f(t));
A = [ones(size(t)),t,t.^2,t.^3,t.^4,t.^5,t.^6,t.^7,t.^8,t.^9,t.^10];
x = A\ft;
xx = flipud(x);
x2 = (A' * A) \ (A' * ft);
xx2 = flipud(x2);
plot(t,ft,'b'), hold on
plot(t,polyval(xx,t),'r') ,hold on
plot(t,polyval(xx2,t),'y--')
hold off
legend('Data','QR method','Normal method')
r1 = A*xx - ft;
nr1 = norm(r1,2)
r2 = A*xx2 - ft;
nr2 = norm(r2,2)
