import numpy as np

# % Initialize random matrices A and B 
A = np.matrix([[1, 2], [4, 5]])
B = np.matrix([[1, 1], [0, 2]])
print(A, '\n')
print(B, '\n')

# % Initialize a 2 by 2 identity matrix
I = np.identity(2)
print(I, '\n')

# % What happens when we multiply I*A ? 
IA = np.dot(I, A)
print(IA, '\n')

# % How about A*I ? 
AI = np.dot(A, I)
print(AI, '\n')

# % Compute A*B 
AB = np.dot(A, B)
print(AB, '\n')

# % Is it equal to B*A? 
BA = np.dot(B, A) 
print(BA, '\n')

# % Note that IA = AI but AB != BA