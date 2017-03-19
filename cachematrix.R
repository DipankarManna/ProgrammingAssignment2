## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a list containing a function to set and get the value of the matrix and inverse of matrix
## Creating a "matrix" object that can cache its inverse
 makeCacheMatrix <- function(x = matrix()) { 
 inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## The following function returns the inverse of the matrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv <- x$getinverse()
     if(!is.null(inv)) {
         message("cached data")
         return(inv)
     }
     data <- x$get()
     inv <- solve(data, ...)
     x$setinverse(inv)
     inv
}

