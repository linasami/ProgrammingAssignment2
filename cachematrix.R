## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    c <- NULL
    set <- function(y) {
        x <<- y
        c <<- NULL
    }
    get <- function() x
    setinv <- function(solve) c <<- solve 
    getinv <- function() c
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    c <- x$getinv()
    if(!is.null(c)) {
        message("getting cached data")
        return(c)
    }
    data <- x$get()
    c <- solve(data, ...)
    x$setinv(c)
    c
}

