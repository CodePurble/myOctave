%% GNU Octave implementation

pkg load communications

%%Amplitude Modulation
t=0:0.0000001:5;%Define time-axis

%%Generate a single tone modulating signal
Am=3.85;%Amplitude of the message signal
m=Am*sin(2*pi*1565*t);

%%Generate carrier signal
Ac=6;
c=Ac*cos(2*pi*531000*t);

%Generate an Amplitude modulated signal
% y=(Ac+m).*cos(2*pi*531000*t);
y = Ac .* m .* cos(2*pi*531000*t);

% yNorm = y ./ (Ac + Am);

%%Plot signals
% subplot(2,1,1);plot(t,m);xlim([0,0.01]);title('Message signal')
% subplot(2,1,2);plot(t,c);xlim([0,0.00007698]);title('Carrier Signal');
% figure
plot(t,y);xlim([0,0.0004232]);title('Modulated Signal');

%%Plotting the spectrum
% n=length(m);
% fs=1500*1000;
% mf=fft(m);
% f=(0:n-1)*(fs/n);
% figure
% plot(f,abs(mf));xlim([-5,(20*10E5)]);

%%Demodulation
% demod = amdemod(y, 531000, (1/0.0000001)); % 1/0.0000001 is 1MHz
% figure
% plot(t, demod); xlim([0, 0.01]); title('Demodulated message signal')
waitfor(gcf) % Waits until the window is manually closed
