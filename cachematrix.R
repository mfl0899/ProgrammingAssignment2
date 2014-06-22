## Provides inverse matrix data by either computation of new matrix data or  
## by pulling a previously established unchanged inverse matrix from cache. 
## The process also checks for and allows for argument values assigned outside
## the calling environment

## Create special "matrix" object that can cache it's inverse

makeCacheMatrix <- function(x = matrix()) {

}


## Compute the inverse "special" returned by makeCacheMatrix. If matrix inverse 
## has already been computed and matrix has not changed, then retrieve the 
## inverse from  cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
