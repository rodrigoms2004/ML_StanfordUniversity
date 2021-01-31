function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


% Input layer
a_layer1 = [ones(m, 1) X]; % add a column of ones (bias), input layer

% hidden layer
z_layer2 = a_layer1 * Theta1'; % theta1 values * inputs
m_z_layer2 = size(z_layer2); % size of z layer 2
a_layer2 = [ones(m_z_layer2, 1), sigmoid(z_layer2)]; % add bias and compute g(z_layer2)

% output layer
z_layer3 = a_layer2 * Theta2'; % theta2 values * outputs of layer 2
a_layer3 = sigmoid(z_layer3); 


% get max value of each row and its index
[p_max, ind_max] = max(a_layer3, [], 2);

p = ind_max;



% =========================================================================


end
