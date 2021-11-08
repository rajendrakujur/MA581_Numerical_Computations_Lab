clc
clear all

account = 100 + (100000-100) * rand(50000,1);
% Sets up 50,000 accounts with balances between $100 and $100000.
account = floor(100 * account)/100;
% Deletes fractions of a cent from initial balances.

hacker_account = 0;
number_of_days = 0;
while hacker_account < 1000000
    number_of_days = number_of_days + 1;
    account = account + (account*(5/36500));
    hacker_account = hacker_account + (hacker_account*(5/36500));
    hacker_account = hacker_account + sum(account-floor(account));
end
fprintf('No.of days to become a millionaire: ')
disp(number_of_days)
