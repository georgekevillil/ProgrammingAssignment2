## Defining makeCacheMatrix and cachesolve

## function takes in a matrix as input. The result is a list which can store the
## matrix and also caxhe the inverse which will be calculated using cacheSolve

  makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
  x<<-y
  j<<-NULL
  }
  get <- function()x
  setInverse <- function(inverse)j<<-inverse
  getInverse <- function()j
  list(set = set, get = get, setInverse = setInverse, getInverse= getInverse)
  }



## checks for inverse in the cache and create the inverse of the upper mentioned
  ##matrix if not available

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
    mat <- x$get()
    j <- solve(mat,...)
    x$setInverse(j)
  }
}
