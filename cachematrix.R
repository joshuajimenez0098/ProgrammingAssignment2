## Assignment 2 Joshua

## Function to solve the inverse of a matrix

makeCacheMatrix <- function(MTX = matrix()) {
  invMTX <- NULL
  set <- function(x) {
    MTX <<- x
    invMTX <<- NULL
  }
  get <- function() MTX
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() invMTX
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

Matx<-matrix(c(4,16,4,6),nrow=2) #matriz ejemplo
Matxy<-makeCacheMatrix(Matx)
Matxy

cacheSolve <- function(MTX, ...) {
  inv <- MTX$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(invM)
  }
  matx <- MTX$get()
  invMTX <- solve(matx, ...)
  MTX$setInverse(invMTX)
  invMTX
}

# Execution 
cacheSolve(Matxy)

# Validation
solve(Matx)
