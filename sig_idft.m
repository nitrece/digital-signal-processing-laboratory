function y = sig_idft(x)
% Inverse Discrete Fourier Transform
N = length(x);
y = zeros(1, N);
for n = 0 : (N-1)
    for k = 0 : (N-1)
        y(1, 1 + n) = y(1, 1 + n) + x(1, 1 + k) * exp(1j * (2*pi/N) * n * k);
    end
    y(1, 1 + n) = y(1, 1 + n) / N;
end
end
