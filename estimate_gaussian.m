% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values, variances] = estimate_gaussian(X)
    %nr of examples
    nr = size(X, 1);

    % Caluclating the mean values with the formula given
    mean_values = sum(X) / nr;

    %Calculating the variance matrix with the formula given
    %the formula is (X - mean_values) ^ T * (X - mean_values) / m
    %we use repmat to repeat the mean_values m times
    %to make the matrix subtraction possible
    variances = (X - repmat(mean_values, nr, 1))' * (X - repmat(mean_values, nr, 1)) / nr;

endfunction
