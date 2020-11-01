function [time_domain] = myIDFT(freq_domain)
	N = length(freq_domain);
	time_domain = zeros(1, N);

	for n = 0:N-1
		for k = 0:N-1
			W_N = exp(i*2*pi*n*k/N);
		% Do this to work around the fact that Octave indexes vectors from 1 instead of 0
			time_domain(n+1) = time_domain(n+1) + freq_domain(k+1)*W_N;
		endfor
		time_domain(n+1) = time_domain(n+1)/N;
	endfor
end
