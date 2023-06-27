%% C) Filter Design
%%% Part 1 - Rect Filter
clc
clear
load chirp.mat; 
filename = "chirp.wav"; 
audiowrite (filename, y, Fs); 
[y, Fs] = audioread ("chirp.wav");
 n = length(y);
range = -n/2:((n/2)-1);
period = 1/Fs; p = n*period;
t = (0 : (n-1)); j = 1/p;
f = range*j;
filter_2000 = abs(f) < 2000; Y = fftshift(fft(y.'));
Yfiltered = Y.*filter_2000;
ytime = ifft(fftshift(Yfiltered));
figure(); plot(t,real(ytime));
title ("Plot of filtered sound (2000kHz) in time domain");
xlabel('t'); ylabel('amplitude');
figure(); plot(f, abs(Yfiltered));
title ("Plot of filtered sound (2000kHz) in frequency domain");
xlabel('frequency'); ylabel('|Y(Ω)|');

%%% Part 2 - Playing the Rect Filtered Signal
sound(real(ytime),Fs);

%%% Part 3 - Bass Frequency (16Hz - 256Hz) Filter
[y, Fs] = audioread ("chirp.wav");
n = length(y);
range = -n/2:((n/2)-1);
period = 1/Fs; p = n*period;
t = (0 : (n-1)); j = 1/p;
f = range*j;
filter_16_256 = abs(f) < 16 | abs(f) > 256;
Y = fftshift(fft(y.'));
Yfiltered = Y.*filter_16_256;
ytime = ifft(fftshift(Yfiltered));
figure(); plot(t,real(ytime));
title ("Plot of filtered sound (16-256kHz) in time domain");
xlabel('t'); ylabel('amplitude');
figure(); plot(f, abs(Yfiltered));
title ("Plot of filtered sound (16-256kHz) in frequency domain");
xlabel('frequency');
ylabel('|Y(Ω)|');
sound(real(ytime),Fs);

%%% Part 4 - Treble Frequency (2048Hz - 16384Hz) Amplifying Filter
[y, Fs] = audioread ("chirp.wav");
n = length(y); range = -n/2:((n/2)-1);
period = 1/Fs; p = n*period;
t = (0 : (n-1)); j = 1/p;
f = range*j;
filter_2048_16384 = abs(f) > 2048 | abs(f) < 16384;
Y = fftshift(fft(y.'));
Yfiltered = Y.*filter_2048_16384.*1.25; ytime = ifft(fftshift(Yfiltered));
figure(); plot(t,real(ytime));
title ("Plot of filtered and amplified sound (2048-16384kHz) in time domain");
xlabel('t');
ylabel('amplitude');

figure();
plot(f, abs(Yfiltered));
title ("Plot of filtered and amplified sound (2048-16384kHz) in frequency domain");
xlabel('frequency');
ylabel('|Y(Ω)|');
sound(real(ytime),Fs);