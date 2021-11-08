clc
clear all
x=[1900,1910,1920,1930,1940,1950,1960,1970,1980];
f=[76212168;92228496;106021537;123202624;132164569;151325798;179323175;203302031;226542199];
n=length(x);
for i=1:n
    for j=1:n
        A(i,j)=((x(i)-1940)/40)^(j-1);
    end
end
a=A\f;
a1=flip(a');
v=polyval(a1,1900);
err=(248709873-v)/248709873