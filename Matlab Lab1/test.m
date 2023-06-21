t = [0:1:12];x = zeros(1,13);
y = zeros(1,13);y2 = zeros(1,13);
x(1) = 2000;
for i = 1:13
    if i == 1
        y(i) = x(i);
    else
        y(i) = x(i) + 1.02.*y(i-1);
    end
end
stem(t,y)
