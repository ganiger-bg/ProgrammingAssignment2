## Put comments here that give an overall description of what your
## functions do 2

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  mretrun <- NULL
  set <- function(y){
    x <<- y
    mretrun  <<- NULL
  }
  get <- function() x
  setmatrix <- function(inverse) mretrun <<- inverse
  getmatrix <- function() mretrun 
  
  list(set=set, get=get,   setmatrix=setmatrix,   getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mretrun  <- x$getmatrix()
  
  if(!is.null(mretrun)){
    message("Getting Cached Matrix Data")
    return(mretrun )
  }
  matrix.data <- x$get()
  mretrun  <- solve(matrix.data, ...)
  x$setmatrix(mretrun)
  return(mretrun )
}
