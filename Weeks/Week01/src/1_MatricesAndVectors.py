import numpy as np


A = np.matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
print('Matrix A\n', A)

v = np.matrix([1, 2, 3])
print('\nVector v\n', v)

print('\nDimension of A:', A.shape)
print('\nDimension of v:', v.shape)

print('\nIndex onto 3nd row 3rd column of matrix A', A[1,2])
