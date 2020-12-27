import numpy as np

# % Initialize matrix A 
A = np.matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print(A, '\n')

# % Initialize vector v 
v = np.matrix([1, 1, 1]).T
print(v, '\n')

# % Multiply A * v
Av = np.dot(A, v)
print(Av, '\n')
