cacheSolve <- function(x, ...) {
        ## Compute the inverse "special" returned by makeCacheMatrix. If matrix 
        ## inverse has already been computed and matrix has not changed, 
        ## then retrieve the inverse from  cache
        
        inverseMatrix <- x$getinverse() ## Check for cached matrix
        
        if(is.na(inverseMatrix)) {
                        ## no cached matrix found - continue processing
                else identical(x, inverseMatrix)
                        ## cached matrix found; 
                        ## verify cached matrix unchanged before using
                        message("using cached data")
                        return(inverseMatrix)

                ## changes found; continue to compute inverse
        }
        
        data <- x$get() 
        inverseMatrix <- solve(data, ...) ## Compute inverse of matrix
        x$setinverse(inverseMatrix)       ## Cache inverse matrix
        
        inverseMatrix
        
}
       