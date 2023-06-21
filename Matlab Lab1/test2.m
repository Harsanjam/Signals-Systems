
%Question 2
s = 13;
y = zeros(1,s);y(1) = 100;
for n=1:s-1
    yround = round(1.02*y(n)+100*n);
    y(n+1)= yround;
end
figure(8);
n = [1:12].';
stem(n,y(n))
xlabel('Months')
ylabel('Balance')
title('Account balance overtime with zero input')

