
n=-10:1:70;

y=@(n) (5.*(exp((-n)/8)).*(u(n)-u(n-10)));
u=@(n) (1.0.*((n>=0)&(n<=70)));

y1=@(n) y(3.*n);
y2=@(n) y(n/3);

figure(1);
stem(n,y(n))
figure(2);
stem(n,y1(n))
figure(3);
stem(n,y2(n))

