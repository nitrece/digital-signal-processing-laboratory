function y = conv_overlap_save(x, h)
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
    if(i == 0)
        X(1, :) = [zeros(1, M-1) x(1, 1:L)];
    elseif(i == T-1)
        X(1+i, :) = [X(i, (1+L):N) x(1, (1+i*L):xLen) zeros(1, T*L - xLen)];
    else
        X(1+i, :) = [X(i, (1+L):N) x(1, (1+i*L):(i*L+L))];
    end
Y(1 + i, :) = circonv(X(1+i, :), H);
end

% Discard useless output and generate output
y = zeros(1, T*L);
for i = 0 : (T-1)
    y(1, (1+i*L):(i*L+L)) = Y(1+i, M:end);
end
y = y(1, 1 : (xLen + hLen - 1));
end