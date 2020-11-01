% N defaults to the length of the time_domain signal
function [freq_domain] = myDFT(time_domain, N=length(time_domain))
	freq_domain = zeros(1, N);
	if(N >= length(time_domain)) % pad zeros
		time_domain = [time_domain, zeros(1, N-length(time_domain))];
	else % truncate signal
		time_domain = time_domain(1:N)
	endif

	for k = 0:N-1
		for n = 0:length(time_domain)-1
			W_N = exp(-1*i*2*pi*n*k/N);
		% Do this to work around the fact that Octave indexes vectors from 1 instead of 0
			freq_domain(k+1) = freq_domain(k+1) + time_domain(n+1)*W_N;
		endfor
	endfor
end
