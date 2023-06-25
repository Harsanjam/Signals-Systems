%% C.1
u = @(n) (n >= 0)* 1.0.(mod(n,1)==0);
H = @(n) u(n+4)-u(n-5);
No = 32; 
n = (-16:16); 
omega = (2pi/No);

subplot(2, 1, 1);
stem(n,H(n),'k');
xlabel('r'); 
ylabel('H[r]'); 
axis([-16 16 0 1]);
title('DTFS of the frequency response');
grid;

subplot(2, 1, 2);
stem(n.*omega,H(n),'k'); 
xlabel('\omega'); 
ylabel('H[r]'); 
axis([-pi pi 0 1]);
title ('DFTS of the frequency response vs \omega');
grid;