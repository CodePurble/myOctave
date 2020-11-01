%% Sampling theorem

t = 0:0.00001:2;
n = 0:(length(t) - 1);
Am = 2;
fm = 100; % 100Hz
fs = 2*fm; % Critical sampling (do for over and under sampling as well)
x = Am*cos(2*pi*fm*t); % CTS
crit = Am*cos(2*pi*fm*(n/fs)); % critically sampled signal
over = Am*cos(2*pi*fm*(n/(10*fs))); % critically sampled signal
under = Am*cos(2*pi*fm*(n/(0.2*fs))); % critically sampled signal
plot(t, x); xlim([0, 0.03]); title("Input signal");
figure;
subplot(311); stem(n, under); xlim([0, 35]); title("Under-sampled signal");
subplot(312); stem(n, crit); xlim([0, 35]); title("Critically sampled signal");
subplot(313); stem(n, over); xlim([0, 35]); title("Over-sampled signal");
waitfor(gcf)
