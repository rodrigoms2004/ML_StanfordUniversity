import numpy as np

# Initialize matrix A and B 
A = np.matrix([[1, 2, 4], [5, 3, 2]])
B = np.matrix([[1, 3, 4], [1, 1, 1]])

print(A, '\n')

print(B, '\n')

# Initialize constant s 
s = 2

# See how element-wise addition works
add_AB = A + B
print(add_AB, '\n')

# See how element-wise subtraction works
sub_AB = A - B
print(sub_AB, '\n')


# See how scalar multiplication works
mult_As = A * s
print(mult_As, '\n')

# Divide A by s
div_As = A / s
print(div_As, '\n')

# What happens if we have a Matrix + scalar?
add_As = A + s
print(add_As, '\n')