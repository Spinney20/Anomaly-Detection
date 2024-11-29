function [false_positives, false_negatives, true_positives] = check_predictions(predictions, truths)
    % true positives
    % both the prediction and the truth are 1
    true_positives = sum((predictions == 1) & (truths == 1));

    % false positives
    % the prediction is 1, but the truth is 0
    false_positives = sum((predictions == 1) & (truths == 0));

    % false negatives
    % the prediction is 0, but the truth is 1
    false_negatives = sum((predictions == 0) & (truths == 1));
endfunction
