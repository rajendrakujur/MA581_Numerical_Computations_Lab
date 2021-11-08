function s = powersin(x)
%
% POWERSIN(x) tries to comptue sin(x) from a power series
%
s = 0;
t = x;
n = 1;
terms=1;
max=0;
while s + t ~= s;
s = s + t;
if(s>max)
    max=s;
    max_term=terms;
end
t = -x.^2/((n+1)*(n+2)).*t;
n = n + 2;
terms=terms+1;
end
terms
max
max_term
end
