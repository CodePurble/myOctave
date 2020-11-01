% Impulse response of systems

% Impulse coeffs -> B reps numerator coeffs
% Impulse coeffs -> A reps denominator coeffs
% Function impz(B, A, N) N = num of samples

% Function filter(B, A, X)

unitStep = ones(1, 10);
impulse = [1, zeros(1, 9)];

A = [1, -1/4];
B = [1];

Y = filter(B, A, unitStep);
stem(Y);
waitfor(gcf);
