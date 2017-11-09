## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  INVERSE <- NULL   #currently the value is set to be null
  set <- function(y) {   #function sets  the value
    x <<- y   #upragding of matrix from old to new
    INVERSE <<- NULL  #reseting the inverse
  }
  get <- function() x  #function gets the actual matrix
  setInverse <- function(inverse) INVERSE <<- inverse  #sets the value of the inverse matrix
  getInverse <- function() INVERSE  #gets the value 
  list(set = set, get = get,
       setInverse = setInverse,           #available functions
       getInverse = getInverse)
  
  
  
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  
  
  INVERSE <- x$getInverse()     #inverse of the matrix
  if(!is.null(INVERSE)) {    #condition for the inverse
    message("getting cached data")   #one face of condition -printing message
    return(INVERSE)          #output
  }
  data <- x$get()               #actual matrix
  INVERSE <- solve(data, ...)
  x$setInverse(INVERSE)                 #updating 
  INVERSE
  
  }

