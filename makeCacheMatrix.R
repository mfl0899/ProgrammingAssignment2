makeCacheMatrix <- function(x = matrix()) {
        ## Create special "matrix" object that can cache it's inverse
        
        inverseMatrix <- matrix()
        
        ## Access function arguments outside calling environment
        set <- function(y) 
                x <<- y           
                inverseMatrix <<- matrix()
        }
        get <- function() x
        setinverse <- function(solve) inverseMatrix <<- solve
        getinverse <- function() inverseMatrix
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
}