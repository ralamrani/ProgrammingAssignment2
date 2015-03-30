## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  x <<- x
  return(x)
  get <- function() x
  setInv <- function(solve) x <<- solve
  getInv <- function() x
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  a <- a$getInv()
  if(!is.null(x)) {
    message("getting cached data")
    return(x)
  }
  data <- x$get()
  x <- solve(data, ...)
  x$setInv(x)
  x
}

