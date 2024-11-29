# ANOMALY DETECTION
- estimate_gaussian.m
Gaussian distribution parameters from training data to check
for data normality and potential anomalies.

- multivariate_gaussian.m
calculates the probability density for a test dataset using
training data parameters to detect new anomalies with the
help of gaussian_distribution function

- In the end we find the best thereshold for anomaly detection
by evaluation of precision recall and F1, to identify real anomalies
while making sure false ones are less -> in the function optimal threshold
