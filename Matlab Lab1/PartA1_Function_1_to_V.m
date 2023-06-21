n=-20:1:20;
y= @(n) (1.*(n>2) & (n < 4)); 
u1=@(n) ((1).*((n>=-1)&(n<=20)));
u=@(n) (1.0.*((n>=0)&(n<=20)));
x=@(n) cos ((pi.*n)/5).*u(n);
x1=@(n) x(n-3);
x2=@(n) x(n);
figure(1);
stem(n,y(n))
figure(2);
stem(n,u1(n)) 
figure(3);
stem(n,x(n))
figure(4);
stem(n,x1(n))
figure(5);
stem(n,x(-n))