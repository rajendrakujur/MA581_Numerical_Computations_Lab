clc;
clear all;

%%% Set up data
h = [0.282; 0.564; 0.752; 0.940];
d = [0.752; 1.102; 1.248; 1.410];

%%% Form the 4x2 matrix A and solve for the coefficient vector c.
A = [ones(size(h)), h]; 
c = A\d; % solution of the LSP Ac =d

cc = flipud(c); % order the coefficients in descending 
% order for polyval

%%% Plot the data points
plot(h,d,'b '), title('Least Squares Linear Fit'), hold
xlabel('release height'), ylabel('horizontal distance')

%%% Plot the line of best fit
hmin = min(h); hmax = max(h);
h1 = [hmin:(hmax-hmin)/100:hmax];
plot(h1, polyval(cc, h1), 'r'), axis tight

r=(A*c-d)
n=norm(r)
