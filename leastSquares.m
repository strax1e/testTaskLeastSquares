function polyCoefficients = leastSquares(x, y, n) % можно выбрать степень n полинома
    X = [];
    for j = 1 : length(x) % конструируется матрица X
        row = []; % создаем по строке
        for i = n : -1 : 0
            row = [row  x(j).^i]; % элементы в строке - это все степени какого-то одного элемента из наблюдений x (второй аргумент)
        end
        X = [X; row]; % присоединяем строку к основной матрице
    end
    polyCoefficients = (linsolve((X' * X), (X' * y')))'; % решаем СЛАУ XX'b = X'y', b = polyCoefficients
end