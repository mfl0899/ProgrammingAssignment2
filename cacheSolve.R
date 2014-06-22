cacheSolve <- function(x, ...) {
        ## Compute the inverse "special" returned by makeCacheMatrix. If matrix 
        ## inverse has already been computed and matrix has not changed, 
        ## then retrieve the inverse from  cache
        
        inverseMatrix <- x$getinverse()
        if(!is.na(inverseMatrix)) {
                        message("getting cached data")
                        return(inverseMatrix)
        }
        data <- x$get()
        inverseMatrix <- solve(data, ...)
        x$setinverse(inverseMatrix)
        inverseMatrix
        
}
       