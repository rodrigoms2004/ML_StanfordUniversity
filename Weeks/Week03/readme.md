# Logistic Regression


## Classification

To attempt classification, one method is to use linear regression and map all predictions greater than 0.5 as a 1 and all less than 0.5 as a 0. However, this method doesn't work well because classification is not actually a linear function.

The classification problem is just like the regression problem, except that the values we now want to predict take on only a small number of discrete values. For now, we will focus on the binary classification problem in which y can take on only two values, 0 and 1. (Most of what we say here will also generalize to the multiple-class case.)
For instance, if we are trying to build a spam classifier for email, then x^i may be some features of a piece of email, and y may be 1 if it is a piece of spam mail, and 0 otherwise. Hence, y∈{0,1}. 0 is also called the negative class, and 1 the positive class, and they are sometimes also denoted by the symbols “-” and “+.” Given x^i, the corresponding y^i is also called the label for the training example. 

## Hypothesis Representation

### Sigmoid function, or Logistic Function

```
hθ(x) = g (θ^T * x)

z = θ^T * x

g(z) = 1 / ( 1 + e^(−z) )

```

### Probability

* P(y=1∣x;θ) = probability that y	= 1, given x, parameterized by 
* P(y=1∣x;θ) = probability that y	= 0, given x, parameterized by 

* hθ(x) = P(y=1∣x;θ) = 1 - P(y=0∣x;θ)
* P(y=0∣x;θ) + P(y=1∣x;θ) = 1


### Question

Suppose we want to predict, from data xx about a tumor, whether it is malignant (y=1) or benign (y=0). Our logistic regression classifier outputs, for a specific tumor, hθ(x) = P(y=1|x;θ) = 0.7, so we estimate that there is a 70% chance of this tumor being malignant. What should be our estimate for P(y=0∣x;θ), the probability the tumor is benign?   	

* P(y=0∣x;θ)=0.3 **CORRECT**
* P(y=0∣x;θ)=0.7
* P(y=0∣x;θ)=0.7²
* P(y=0∣x;θ)=0.3 * 0.7

## Decision Boundary

In order to get our discrete 0 or 1 classification, we can translate the output of the hypothesis function as follows:

```
hθ(x) ≥ 0.5 → y = 1
hθ(x) < 0.5 → y = 0
```
The way our logistic function g behaves is that when its input is greater than or equal to zero, its output is greater than or equal to 0.5:

```
g(z) ≥ 0.5
when z ≥ 0
```

Remember.

```
z = 0, e⁰ = 1 ⇒ g(z) = 1/2
z → ∞, e^(-∞) → 0 ⇒ g(z) = 1
z → −∞, e^(∞) → ∞ ⇒ g(z) = 0
```

So if our input to g is θ^T * X , then that means:

```
hθ(x) = g(θ^T x) ≥ 0.5
when θ^T x ≥ 0
```

From these statements we can now say:

```
θ^T x ≥ 0 ⇒ y = 1
θ^T x < 0 ⇒ y = 0
```

The **decision boundary** is the line that separates the area where y = 0 and where y = 1. It is created by our hypothesis function.

**Example:**

```
θ = [5, −1, 0]

y = 1 if 5 + (−1)x1 + 0x2 ≥ 0
5 − x1 ≥ 0
−x1 ≥ −5
x1 ≤ 5
```
In this case, our decision boundary is a straight vertical line placed on the graph where x1 = 5, and everything to the left of that denotes y = 1, while everything to the right denotes y = 0.

Again, the input to the sigmoid function g(z) (e.g. θ^T X) doesn't need to be linear, and could be a function that describes a circle 

(e.g. z = θ0 + θ1(x1)² + θ2(x2)²) or any shape to fit our data.

## Logistic Regression Model - Cost Function


### Advanced Optimization

In file *Weeks/Week03/src/Functions/costFunction.m*

```
function [jVal, gradient] = costFunction(theta)

jVal = (theta(1) - 5)^2 + (theta(2) - 5)^2;

gradient = zeros(2, 1);
gradient(1) = 2 * (theta(1) - 5);
gradient(2) = 2 * (theta(2) - 5);

```

Using it...

```
options = optimset('GradObj', 'on', 'MaxIter', '100');
initialTheta = zeros(2, 1);
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options)
optTheta =

   5.0000
   5.0000

functionVal =    1.5777e-30
exitFlag =  1
```
## Solving the Problem of Overfitting

