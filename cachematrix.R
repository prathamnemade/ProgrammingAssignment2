## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  INVERSE <- NULL
  set <- function(y) {
    x <<- y
    INVERSE <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) INVERSE <<- inverse
  getInverse <- function() INVERSE
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
  
  
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  
  
  INVERSE <- x$getInverse()
  if(!is.null(INVERSE)) {
    message("getting cached data")
    return(INVERSE)
  }
  data <- x$get()
  INVERSE <- solve(data, ...)
  x$setInverse(INVERSE)
  INVERSE
  
  }

