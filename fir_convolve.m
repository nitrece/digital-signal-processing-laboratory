function y = fir_convolve(x, h)
lenX = length(x);
lenH = length(h);
lenY = lenX + lenH - 1;
x = [x zeros(1, lenH-1)];
y = zeros(1, lenY);
z = zeros(1, lenH);
for i = 1 : lenY
    z = [x(1, i) z(1, 1:(lenH-1))];
    y(1, i) = sum(z .* h);
end
end
