function y = fft_convolve(x, h)
xLen = length(x);
hLen = length(h);
yLen = xLen + hLen - 1;
x = [x zeros(1, yLen - xLen)];
h = [h zeros(1, yLen - hLen)];
y = ifft(fft(x) .* fft(h));
end
