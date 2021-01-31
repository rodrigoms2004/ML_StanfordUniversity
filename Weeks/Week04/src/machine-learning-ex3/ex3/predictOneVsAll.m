function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier. The labels 
%are in the range 1..K, where K = size(all_theta, 1). 
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th row is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples) 

m = size(X, 1);
num_labels = size(all_theta, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters (one-vs-all).
%               You should set p to a vector of predictions (from 1 to
%               num_labels).
%
% Hint: This code can be done all vectorized using the max function.
%       In particular, the max function can also return the index of the 
%       max element, for more information see 'help max'. If your examples 
%       are in rows, then, you can use max(A, [], 2) to obtain the max 
%       for each row.
%       

% X         5000x401
% all_theta 10x401, all_theta' 401x10
% predict   5000x10
% p_pax     5000x1
% ind_max   5000x1
% p         5000x1

predict = sigmoid(X * all_theta');
[p_max, ind_max] = max(predict, [], 2); # max value and index at line (2)
p = ind_max;

% fprintf('predict size.\n');
% size(predict)

% fprintf('p_max size.\n');
% size(p_max)

% fprintf('ind_max size.\n');
% size(ind_max)

% fprintf('p size.\n');
% size(p)

% fprintf('X size.\n');
% size(X)

% fprintf('all_theta size.\n');
% size(all_theta)



% =========================================================================


end
