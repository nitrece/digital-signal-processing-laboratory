function y = conv_overlap_add(x, h)
L = 4;
M = 4;
N = L + M - 1;
xLen = length(x);
hLen = length(h);
T = ceil(xLen / L) + 1;
H = [h zeros(1, N - hLen)];

% Perform Overlap-save method
X = zeros(T, N);
Y = X;
for i = 0 : (T-1)
    if(i == T-1)
        X(1+i, :) = [x(1, (1+i*L):xLen) zeros(1, T*L - xLen) zeros(1, M-1)];
    else
        X(1+i, :) = [x(1, (1+i*L):(i*L+L)) zeros(1, M-1)];
    end
Y(1+i, :) = circonv(X(1+i, :), H);
end

% Merge useless output and generate output
y = zeros(1, T*L+M);
for i = 0 : (T-1)
    y(1, (1+i*L):(i*L+N)) =  y(1, (1+i*L):(i*L+N)) + Y(1+i, 1:N);
end
y = y(1, 1 : (xLen + hLen - 1));
end