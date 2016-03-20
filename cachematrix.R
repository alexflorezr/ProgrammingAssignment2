## This script chache the inverse of a matrix.
## functions do

## This function creates a list of funtions that
## set the value of the matrix
## get the value of the matrix
## set the value of the inversed matrix
## get the value of the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setSolve <- function(solve) m <<- solve
  getSolve <- function() m
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}


## this function estimates the inverse matrix of the output list in makeCacheMatrix

cacheSolve <- function(x, ...) {
  m <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setSolve(m)
  m
  ## Return a matrix that is the inverse of 'x'
}
