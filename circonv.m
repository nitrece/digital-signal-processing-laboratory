function y = circonv(x, h)
xSz = length(x);
hSz = length(h);
ySz = max([xSz hSz]);
x = [x zeros(1, ySz - xSz)];
h = [h zeros(1, ySz - hSz)];

% Generate Xc matrix
Xc = zeros(ySz, ySz);
for i = 0 : (ySz - 1)
    Xc(1 + i, :) = [x(1, (ySz + 1 - i) : ySz) x(1, 1 : (ySz - i))];
end

y = (Xc' * h')';
end