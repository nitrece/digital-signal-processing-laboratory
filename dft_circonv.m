function y = dft_circonv(x, h)
% Circular Convolution using DFT
xLen = length(x);
hLen = length(h);
yLen = max([xLen hLen]);
x = [x zeros(1, yLen - xLen)];
h = [h zeros(1, yLen - hLen)];
y = sig_idft(sig_dft(x) .* sig_dft(h));
end
