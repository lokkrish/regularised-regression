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
tes = size(theta);
J = ((1/(2*m)) * sum(((X*theta)-y).^2))+(lambda/(2*m)).*sum(theta(2:tes(1,1),:).^2);

grad = zeros(size(theta));
for i = 1:length(theta)
  if i==1
    grad(i,1) = (1/m) * sum((((X*theta)-y)')*X(i,1)');
  else
    grad(i,1) = ((1/m) * sum((((X*theta)-y)).*X(:,i)))+((lambda/m)*theta(i,1));
  endif
endfor


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
