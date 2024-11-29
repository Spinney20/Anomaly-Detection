# TASK - 1 ANOMALY DETECTION
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

# TASK - 2 KERNEL REGRESSION
- linear_kernel.m - Computes the dot product between two vectors - linear
kernel - to be used in build_kernel function

- polynomial_kernel.m - Generates a polynomial kernel - to be used in
build_kernel function

- gaussian_kernel.m - gaussian kernel calculation - to be used in build_kernel

- build_kernel.m - Constructs a kernel matrix transforming data
into a high dimensional feature space to model nonlinear relationshiphs !!!

- cholesky.m - Performs the Cholesky decomposition

- conjugate_gradient.m - Implements the conjugate gradient method

- eval_value.m - Evaluates the value of a function at a given point,
using a kernel function and model parameters to make predictions.

- get_lower_inverse.m - Computes the inverse of a lower triangular matrix

- get_prediction_params_iterative.m - Uses iterative methods to calculate
the parameters of a model AND neiterative for the neiterative function


# TASK - 3 STOCHASTIC TEXT GEN

- distinct_k_secv.m - This function extracts unique sequences from an array of
sequences, removing duplicates to ensure a distinct set of sequences for
further data analysis or processing in the future of this task

- distinct_words.m - Returns an array of unique words from a given word array
we do this to simulate natural language (i think)

- k_secv_idx.m - Creates a dictionary that maps each unique k-sequence to a
unique numeric index, facilitating fast access and efficiency in handling
seqvences

- k_secv.m - Generates an array of k-sequences from an array of tokens
with each sequence consisting of k consecutive tokens

- word_idx.m - Creates a dictionary that assigns each unique word a numeric
index, similar to k_secv_idx.m but specifically for words.

In the end, all this functions help us build stochastic_matrix.m in which we
construct a stochastic matrix based on k-sequences and associated words, u
sing indexing from k_secv_idx.m and word_idx.m to
align sequences with their corresponding probabilities.
