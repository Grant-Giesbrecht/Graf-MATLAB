fig1 = figure(1);

plot([1,2,3,4,5], [1,2,3,4,5], 'LineStyle',':', 'Marker','.', 'Color', [0.6, 0, 0]);
grid on;
xlabel("X data");
ylabel("Y data");
title("Test")

fig2 = figure(2);
subplot(2, 2, 1);
plot(1:5, rand(1, 5), 'LineStyle',':', 'Marker','.', 'Color', [0.6, 0, 0]);
grid on;
xlabel("X data");
ylabel("Y data");
title("1")

subplot(2, 2, 3);
plot(1:5, rand(1, 5), 'LineStyle',':', 'Marker','.', 'Color', [0.6, 0, 0]);
grid on;
xlabel("X data");
ylabel("Y data");
title("3")

subplot(2, 2, [2, 4]);
plot(1:5, rand(1, 5), 'LineStyle',':', 'Marker','+', 'Color', [0, 0, 0.7]);
grid on;
xlabel("X data");
ylabel("Y data");
title("2/4")
