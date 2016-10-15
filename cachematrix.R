# The below is for the Coursera R Prog Course by Mate
#                Title :
# Caching Inverse of a given  Matrix
 
# Example usage is below
# m <- matrix(c(0, 2, 1, 0), nrow = 2, ncol = 2, byrow = TRUE)
# m2 <- makeCacheMatrix(m)

# cacheSolve(m2)
# [,1] [,2]
# [1,]  0.0    1
# [2,]  0.5    0

# cacheSolve(m2)
# inverse is cached
# [,1] [,2]
# [1,]  0.0    1
# [2,]  0.5    0

# Creates a matrix that can cache it's inverse
#
# Args:
#   x: A matrix (Optional)
#
# Returns:
#   A matrix with functions to get/set value & get/set inverse
makeCacheMatrix <- function(x = matrix()) {
  # cached inverse of matrix
inv <- NULL
