function [jVal, gradient] = costFunction(theta)

jVal = (theta(1) - 5)^2 + (theta(2) - 5)^2;

gradient = zeros(2, 1);
gradient(1) = 2 * (theta(1) - 5);
gradient(2) = 2 * (theta(2) - 5);

% Using it

% options = optimset('GradObj', 'on', 'MaxIter', '100');
% initialTheta = zeros(2, 1);
% [optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options)
% optTheta =

%    5.0000
%    5.0000

% functionVal =    1.5777e-30
% exitFlag =  1