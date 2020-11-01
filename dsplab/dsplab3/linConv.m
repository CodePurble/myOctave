close all;clear all; clc;
x = [1, 3, 4, -9];
h = [3, 4, -9, 0];
len_x = length(x);
len_h = length(h);

% Make sure both signals are of the length of the final sum
% to avoid out-of-bounds error while summing
x = [x, zeros(1, length(h))];
h = [h, zeros(1, length(x))];

for n = 1:(len_x + len_h - 1)
	y(n) = 0;
	for k = 1:length(x)
		if(n - k + 1 > 0)
			y(n) += x(k)*h(n - k + 1);
		endif
	endfor
endfor

stem(y)
waitfor(gcf);
