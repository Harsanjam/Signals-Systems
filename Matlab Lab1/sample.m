function y3_discrete = sample(n)
    t = n * 0.1;
    y3_discrete = z(t/3);
end

function y = z(t)
    y = 5 * exp(-t/8) * (heaviside(t) - heaviside(t - 10));
end

x = -10:0.1:70;
y3_discrete_values = arrayfun(@y3_discrete_fn, x);

plot(x, y3_discrete_values, '-', 'DisplayName', 'y3[n]');
xlabel('n');
legend('show');
