
n=(0:45);
x=cos(pi*n/1)-(n==1)+(n==5);
y1 = max_filter(x,4);
y2 = max_filter(x,8);
y3 = max_filter(x,12);
figure()
stem(n,x)
grid on
xlabel('n'); ylabel('x'); title('Input')
figure()
stem(n,y1)
grid on
xlabel('n'); ylabel('Y1'); title('4 Point Filter')
figure()
stem(n,y2)
grid on
xlabel('n');ylabel('Y2');title('8 Point Filter')
figure()
stem(n,y3)
grid on
xlabel('n');ylabel('Y3');title('12 Point Filter')

function[y]= max_filter(x,N)
Len=length(x);
x=x(:);
x=[zeros(N-1,1);x]; y=zeros(Len,1);
for m=1:Len
    y(m)= max(x(m:m+(N-1)));
end
end

