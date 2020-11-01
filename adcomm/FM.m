% C. Ramprakash
% 4NI18EC019, ECE 'A'
% GNU Octave implementation of FM

pkg load communications

t=0:0.0000001:5;

fm = 3568;
fc = 700000;
Ac = 5;
Am = 2.87;
beta_f = 60;

fdev = beta_f*fm;

m = Am * cos(2*pi*fm*t);
c = Ac * sin(2*pi*fc*t);

% Manual calculation
s = Ac * cos(2*pi*fc*t + beta_f*sin(2*pi*fm*t));

% Inbuilt function
% s = fmmod(m, fc, (1/0.0000001), fdev);

% Scale normalised output (only required for fmmod)
% s = s .* Ac;

xmin = 0.00014;
xmax = 0.00024;

subplot(3,1,1);plot(t, m);xlim([xmin, xmax]);title('Message signal');
subplot(3,1,2);plot(t, c);xlim([xmin, xmax]);title('Carrier signal');
subplot(3,1,3);plot(t, s);xlim([xmin, xmax]);title('FM signal');

waitfor(gcf);
