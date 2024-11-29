function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
    best_F1 = 0;
    best_epsilon = 0;
    associated_precision = 0;
    associated_recall = 0;

    step_size = (max(probabilities) - min(probabilities)) / 1000;
    for epsilon = min(probabilities):step_size:max(probabilities)
        predictions = (probabilities<epsilon);

        [fp, fn, tp] = check_predictions(predictions, truths);

        if tp + fp == 0 || tp + fn == 0
            continue;
        endif

        [precision, recall, F1] = metrics(tp, fp, fn);

        % if we find and F1 better than our current best, we update the best values
        if F1>best_F1
            best_F1 = F1;
            best_epsilon = epsilon;
            associated_precision = precision;
            associated_recall = recall;
        endif
    endfor
endfunction
