## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  q <- NULL
  set <- function(y) {
    x <<- y
    q <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) q <<- inverse
  getinverse <- function() q
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  q <- x$getinverse()
  if(!is.null(q)) {
    message("getting cached data")
    return(q)
  }
  data <- x$get()
  q <- solve(data, ...)
  x$setinverse(q)
  q ## Return a matrix that is the inverse of 'x'
}