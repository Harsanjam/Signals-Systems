N_0=32;
n=(0:N_0-1);
omega_0=2*pi/N_0;
X_r= X_r.*exp(-1i*5*omega_0*n);
for r = 0:N_0-1
    x(r+1) = sum(X_r.*exp(1i*r*omega_0*n));
end
%x=real(ifft(X_r)*N_0);
figure (3);
stem(n,x); xlabel('n'); label('x[n]'); axis ( [0 32 -4 10]); grid;