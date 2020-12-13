function y = sig_dft(x)
% Discrete Fourier Transform
N = length(x);
y = zeros(1, N);
for k = 0 : (N-1)
    for n = 0 : (N-1)
        y(1, 1 + k) = y(1, 1 + k) + x(1, 1 + n) * exp(-1j * (2*pi/N) * n * k);
    end
end
end