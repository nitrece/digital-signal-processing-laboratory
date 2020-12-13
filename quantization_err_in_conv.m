clc;
clear all;
close all;

t0 = linspace(0, 6*pi, 1000);
t1 = linspace(0, 2*pi, 100);
x = cos(t0);
h = cos(t1);
y0 = conv(x, h);

pLen = 128;
p = zeros(1, pLen);
for i = 2 : pLen
    y1 = quantized_convolve(x, 1, h, 1, i);
    p(1, i) = sum((y1 - y0) .^ 2) / sum(y0 .^ 2);
end
p(1, 1) = p(1, 2);

plot(10 * log10(p));
title('Quantization Error in Convolution');
xlabel('Bits used');
ylabel('dB Error');
