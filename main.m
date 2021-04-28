n = 8; % аргументы
x = [1, -2, 5, 7, 9];
y = [0, 3, 3, -4, 5];

polyCoeffs = leastSquares(x, y, n) % получения коэф-ов полинома

y1 = [];
x1 = [];
for i = -10 : 0.1 : 10
    y1 = [y1 polyval(polyCoeffs, i)];
    x1 = [x1 i];
end

plot(x1, y1) % рисуем функцию найденного полинома
hold on
plot(x, y, 'bo') % рисуем изначальные точки
grid on
axis([-11 10 -11 10])