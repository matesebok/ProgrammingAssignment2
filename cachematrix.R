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
 ## getter/setter for matrix
  get <- function() x
  set <- function(y) {
    x <<- y
    inv <<- NULL
}
  ## getter/setter for matrix inverse
  getinv <- function() inv
  setinv <- function(inverse) inv <<- inverse
  
  ## return list of functions for matrix
  list(get=get, set=set, getinv=getinv, setinv=setinv)
}

   # Computes the inverse of a matrix. If the inverse has already been
# calculated before, the cached inverse is returned.
#
# Args:
#   x: A matrix
#   ...: further extra arguments
#
# Returns: The inverse of the matrix
cacheSolve <- function(x, ...) {
inv <- x$getinv()
 
  # return cached matrix inverse if it's been already computed inside
  if (!is.null(inv)) {
    message("inverse is cached")
    return(inv)
}
 # compute inverse of  a given matrix 
  m <- x$get()
  inv <- solve(m, ...)
  
  # cache inverse
  x$setinv(inv)
  
  # return inverse of matrix
  return(inv)
}
