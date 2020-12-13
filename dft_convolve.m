function y = dft_convolve(x, h)
% Linear Convolution using DFT
xLen = length(x);
hLen = length(h);
yLen = xLen + hLen - 1;
x = [x zeros(1, yLen - xLen)];
h = [h zeros(1, yLen - hLen)];
y = sig_idft(sig_dft(x) .* sig_dft(h));
end
