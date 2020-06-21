## Hopefully these functions will cache the inverse of a matrix


## The following function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
  setMatrix <- function(matrix){
    m<<-matrix
    inv <<- NULL
  }
  
  getMatrix <-function(){
    m
  }
  
  setInverse <-function(inverse){
    inv<<-inverse
  }
  getInverse <- function(){
    inv
  }
  
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse)
  
}


## This function will show the inverse of the matrix from the function above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <-x$getInverse()
  
  if (!is.null(m)) {
    message ("getting cached data")
    return(m)
  }
  data <-x$get()
  m<-solve(data) %*% data
  x$setInverse(m)
  m
  
}
