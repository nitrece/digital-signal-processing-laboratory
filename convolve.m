function y = convolve(x, h)
xSz = length(x);
hSz = length(h);
ySz = xSz + hSz - 1;
y = zeros(1, ySz);
for i = 1 : xSz
    y(1, i:(i+hSz-1)) = y(1, i:(i+hSz-1)) + x(1, i) * h;
end
end