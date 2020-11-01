% Sampling

t = 0:0.0001:2;
f = 100;
y = cos(2*pi*f*t);

fs = 1.5*f;
Ts = 1/fs;
n = 0:Ts:2;
sampled = cos(2*pi*f*n);
subplot(311);
plot(t, y, "g;Original;", n, sampled, "markersize", 10, "x--k;Under-sampled;"); xlabel("Time"); xlim([0, 0.1]);

fs = 2*f;
Ts = 1/fs;
n = 0:Ts:2;
sampled = cos(2*pi*f*n);
subplot(312);
plot(t, y, "g;Original;", n, sampled, "markersize", 10, "x--k;Critically sampled;"); xlabel("Time"); xlim([0, 0.1]);

fs = 6*f;
Ts = 1/fs;
n = 0:Ts:2;
sampled = cos(2*pi*f*n);
subplot(313);
plot(t, y, "g;Original;", n, sampled, "markersize", 10, "x--k;Over-sampled;"); xlabel("Time"); xlim([0, 0.1]);

waitfor(gcf);
