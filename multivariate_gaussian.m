function probabilities = multivariate_gaussian(X, mean_values, variances)

    probabilities = zeros(size(X, 1), 1);
    n = size(X)
    %I just apply the formula from gaussian distribution for each example
    for i = 1:n
        probabilities(i) = gaussian_distribution(X(i, :), mean_values, variances);
    endfor
endfunction
