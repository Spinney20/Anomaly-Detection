function probability = gaussian_distribution(X, mean_value, variance)
    %Assinging the number of lines of matrix X to m
    %and the number of columns to n
    % m - nr of examples && n - nr of features
    [m, n] = size(X);

    determinant = det(variance);
    inverse = inv(variance);
    %I break the formuila in coefficient and exponent so I dont get penalised
    %for uninteligibile code

    %the coefficient from the formula
    coefficient = (2*pi) ^ (-n/2) * determinant ^ (-0.5);

    %exponent from the formula
    exp_term = sum((X - repmat(mean_value, m, 1)) * inverse .* (X - repmat(mean_value, m, 1)), 2);

    %i think its pretty inteligibile :))
    probability = coefficient * exp(-0.5 * exp_term);
endfunction
