N_0=5;
n=(0:N_0-1);
omega_0=2*pi/N_0;
X_n=4*cos(2.4*pi*n)+2*sin(3.2*pi*n);
for r=0:N_0-1
X_r(r+1) = sum(X_n.*exp(-1j*omega_0*n*r))/N_0;
end
r=n;
figure (1);
subplot (311); stem(n, X_n); xlabel('n'); label('x[n]'); axis([-0.5 4.5 -6 51]); grid;
subplot (312); stem(r, abs (X_r)); xlabel('r'); ylabel('|X_r|'); axis([-0.5 4.5 -6 51]) grid;
subplot (313); stem(r, angle(X_r)); xlabel('r'); ylabel('<X_rl'); axis([-0.5 4.5 -6 51]) grid;