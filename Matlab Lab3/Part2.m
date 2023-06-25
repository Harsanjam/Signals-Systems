N_0=6;
n= (0:N_0-1);
omega_0=2*pi/N_0;
y_n= [3 2 1 0 1 2]; 
for r=0:N_0-1
    Y_r(r+1)=sum(y_n.*exp(-1i*r*omega_0*n))/N_0;
end 
r=n;
figure (2);
subplot (311); stem(n, y_n); xlabel('n'); ylabel('y[n]'); axis([-1 6 -1 4]); grid; 
subplot (312); stem(r, abs (Y_r)); xlabel('r'); ylabel('|Y_r|'); axis ([-1 6 -1 3]); grid; 
subplot (313); stem(r, angle(Y_r)); xlabel('r'); ylabel('<Y_r'); axis([-1 6 -4 2]); grid;