## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

 ## To create special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
         ## Set m to NULL
         m <- NULL
         ## Sets x to new matrix y & resets m to NULL
         set <- function(y) {
                x <<- y
                m <<- NULL
         }
        ## Returns x
        get <- function() x
        ## Sets m to solve
        setinverse <- function(solve) m <<- solve
        # Returns m
        getinverse <- function() m
        # Returns vectors with all functions
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
         m <- x$getinverse()
         ## Checks whether inverse has been calculated
         if(!is.null(m)) {
                message("getting cached data")
                ## Returns m
                return(m)
         }
         ## Sets return value of x$get() which is x to data
         data <- x$get()
         ## Calculate inverse of the data
         m <- solve(data, ...)
         ## Sets the value of the mean in the cache via the setmean function
         x$setinverse(m)
         # Displys m
         m
}
