clc;
clear all;
close all;

t0 = linspace(0, 1, 1000);
x = cos(2*pi*30*t0);
y = sig_dft(x);

subplot(2,1,1);
plot(t0, x, 'LineWidth', 2);
title('Time Domain Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(2,1,2);
plot(linspace(-500, 500, 1000), fftshift(abs(y)), 'LineWidth', 2);
title('Frequency Domain Signal');
xlabel('Frequency');
ylabel('Amplitude');
