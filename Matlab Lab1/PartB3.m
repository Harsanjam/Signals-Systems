
for n= 0:12
    if n==1
        y(n)= 1000+100*n;
    elseif n > 1
        y(n)= 1.03.*y(n-1)+ 100.*n;
    end
end
stem(y)
axis([0 12 0 11000])
xlabel('Months')
ylabel('Balance')
title('Account balance overtime with x[n]=100n')