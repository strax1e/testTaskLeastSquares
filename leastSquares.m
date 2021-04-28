function coefficients = leastSquares(x, y, n) % 1 param 5 degree poly is a model
    A = [];
    for j = 1 : length(x)
        row = []; 
        for i = n : -1 : 0
            row = [row  x(j).^i];
        end
        A = [A; row];
    end
    coefficients = (linsolve((A' * A), (A' * y')))';
end