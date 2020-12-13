% Circular Convolution using DFT

% Calculate Values and perform Circular Convolution
t = linspace(0, 1, 1024);
x = sin(2*pi*16*t);
h = sin(2*pi*8*(t-0.5))./(pi*8*(t-0.5));
y = dft_circonv(x, h);

% Plot Figures
figure;
subplot(2, 2, 1);
plot(t, x, 'LineWidth', 2);
title('Input Signal x(n)');
xlabel('Time');
ylabel('Amplitude');
subplot(2, 2, 2);
plot(t, h, 'LineWidth', 2);
title('Impulse Response h(n)');
xlabel('Time');
ylabel('Amplitude');
subplot(2, 2, 3:4);
plot(t, y, 'LineWidth', 2);
title('Circular-Convolved Signal y(n) = x(n) * h(n)');
xlabel('Time');
ylabel('Amplitude');
