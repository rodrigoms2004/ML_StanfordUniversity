import numpy as np

# % Initialize a 3 by 2 matrix 
A = np.matrix([[1, 2], [3, 4], [5, 6]])
print(A, '\n')

# % Initialize a 2 by 1 matrix 
B = np.matrix([[1], [2]])
print(B, '\n')

# % We expect a resulting matrix of (3 by 2)*(2 by 1) = (3 by 1) 
mult_AB = np.dot(A, B)
print(mult_AB, '\n')
# % Make sure you understand why we got that result