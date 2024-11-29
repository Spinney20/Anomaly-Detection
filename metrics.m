
function [precision recall F1] = metrics(tp, fp, fn)
    precision = tp / (tp + fp);
    recall = tp / (tp + fn);
    F1 = (2 * precision * recall) / (precision + recall);
endfunction
