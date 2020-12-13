%
% Using Convolution
%
clc;
clear all;
close all;

t = linspace(0, 1, 1000);
x = sin(6*pi*t);
h = mod(t, 0.1);
y = conv(x, h);

figure;
subplot(5, 2, [1 3]);
plot(x);
title('Input Signal (x)');
subplot(5, 2, [7 9]);
plot(h);
title('Impulse Response (h)');
subplot(5, 2, [4 6 8]);
plot(y);
title('Output Signal (y)');
