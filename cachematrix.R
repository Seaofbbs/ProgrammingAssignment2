## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y) {
    m <<- y
    inverseMatrix <<- NULL
  }
  get <- function() { 
    m
  }
  setInverse <- function(solve){
    inverseMatrix <<- solve
  }
  getInverse <- function() {
    inverseMatrix
  }
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m) 
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
