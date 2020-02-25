## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
            x <<- y
            m <<- NULL
    }
    get <- function() x
    set_matrix <- function(x1) m <<- x1
    get_matrix <- function() m
    list(set = set, get = get,
             set_matrix = set_matrix,
             get_matrix = get_matrix)    
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$get_matrix()
    if(!is.null(m)) {
        message("found cached data!")
        return(m)
    }
    data <- x$get()
    m <- solve(data,...)
    x$set_matrix(m)
    m
    ## Return a matrix that is the inverse of 'x'
}
