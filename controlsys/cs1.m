pkg load control; % for tf
pkg load signal; % for zp2tf and tf2pz

% tf(numerator_coeffs, denominator_coeffs) -> gives transfer function given the
% coeffs of numerator and denominator

% [z, p, k] = tf2pz(tf) gives zeros, poles and gain from tf
% pzmap()

% Given poles @ -2, 1 and zero @ -1, gain is 7, find tf
% p = [-2, 1];
% z = [-1];
% k = 7;
% [num, den] = zp2tf(z, p, k);
% transfer = tf(num, den);
% pzmap(transfer);

% Series/Parallel/feedback system
% series(num1, den1, num2, den2, ...) not implemented in octave
% parallel(num1, den1, num2, den2, ...) not implemented in octave
% feedback(num1, den1, num2, den2) not implemented in octave

% Step and impulse response
% step() function

zeta = 0.1;
wn = 4;
num = [wn^2];
den = [1, 2*zeta*wn, wn^2];
transfer = tf(num, den);
step(transfer);


waitfor(gcf);
