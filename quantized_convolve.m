function y = quantized_convolve(x, x_amp, h, h_amp, bits)
lenX = length(x);
lenH = length(h);
lenY = lenX + lenH - 1;
z_amp = x_amp * h_amp;
y_amp = z_amp * lenH;
x = discretize(x, x_amp, bits);
h = discretize(h, h_amp, bits);
x = [x zeros(1, lenH-1)];
y = zeros(1, lenY);
z = zeros(1, lenH);
for i = 1 : lenY
    z = [x(1, i) z(1, 1:(lenH-1))];
    y(1, i) = discretize(sum(discretize(z .* h, z_amp, bits)), y_amp, bits);
end
end
