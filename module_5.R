# Trevor Cone
# Module 5 Assignment

# Find the value of inverse of a matrix, determinant of a matrix.
#Initialize two matricies. 
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)
#Transpose both matricies
A <- t(A)
B <- t(B)
# After transposing A is 10 x 10 and B is 100 x 10
A 
B
B %*% A 
# create vector to multiply 
a = c(1,5)
b <- c(7, 3)
a * A
b * B
#Reassign vectors to equal the number of rows of the column for the corresponding matrix
a <- c(a * A[1,])
b <- c(b * B[1,])
a
b
#Inverse matrix
S <- matrix(solve(A))
det(A)
# This shows that there is no inverse for A because it gives error. 
