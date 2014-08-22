## Creates a matrix & caches its inverse, and computes & returns its inverse

## The first function creates a matrix that can cache its inverse

makeCacheMatrix <- function(m = matrix()) {
        n <- NULL
        set <- function(matrix) {
                m <<- matrix
                n <<- NULL
        }
        get <- function() {
                m
        }
        setInverse <- function(inverse) {
                n <<- inverse
        }
        getInverse <- function() {
                n
        }
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
                

## Compute the inverse of the matrix

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
        return(m)
}
data <- x$get()
m <-solve(data) %*% data
x$setInverse(m)
m
}


