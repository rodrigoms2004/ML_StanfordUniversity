function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%




predictions = X * theta;
costFunction = predictions - y

% penality, but not with the first theta value (theta0, in Octave is theta1)
theta(1) = 0;

penality = lambda * (theta'*theta);
J = (costFunction' * costFunction) / (2*m) + penality/(2*m);


% Gradient
grad = (X' * costFunction + lambda * theta) / m;





% =========================================================================

grad = grad(:);

end
