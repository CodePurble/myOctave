% Linear convolution
n = 0:49;
x = n;
% h = [1, zeros(1, 49)]; % Delta function
h = 1./n;

% To demonstrate commutative property
y1 = conv(h, x);
y2 = conv(x, h);

% Demonstrate distributivity and associativity of linear convolution
% Demonstrate linear convolution for non-causal sequences

subplot(4,1,1);
stem(n, x);title("x(n)");
subplot(4,1,2);
stem(n, h);title("h(n)");
subplot(4,1,3);
stem(y1);title("y1(n) = conv(h, x)");
subplot(4,1,4);
stem(y2);title("y2(n) = conv(x, h)");
waitfor(gcf);

