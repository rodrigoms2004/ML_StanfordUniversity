import numpy as np

np.set_printoptions(formatter={'float': lambda x: "{0:0.6f}".format(x)})

# % Initialize matrix A 
A = np.matrix([[1,2,0], [0,5,6], [7,0,9]])
print(A, '\n')

# % Transpose A 
A_trans = A.T
print(A_trans, '\n')

# % Take the inverse of A 
A_inv = A.I
print(A_inv, '\n')

# % What is A^(-1)*A? 
A_invA = np.dot(A_inv, A)
print(A_invA, '\n')