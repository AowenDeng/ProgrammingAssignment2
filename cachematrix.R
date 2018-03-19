## Put comments here that give an overall description of what your
## functions do
## These two functions aim to calculate the inverse matrix of a 
## special "matrix" in an environment
##

## Write a short comment describing this function
## This function is for identifying a special "matrix" to store its inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        x_inverse <- NULL
        set <- function(y) {
                x <<- y
                x_inverse <<- NULL
        }
        get <- function()x
        set_inverse <- function(inverse)x_inverse <<- inverse
        get_inverse <- function()x_inverse
        list(set = set, get = get,
             set_inverse = set_inverse,
             get_inverse = get_inverse)
}



## Write a short comment describing this function
## This function is for calculating the inverse matrix of the special matrix
## If it found that the inverse matrix is calculated, then directly output its inverse matrix

cacheSolve <- function(x, ...) {
        x_inverse <- x$get_inverse()
        if(!is.null(x_inverse)) {
                message("Retrieve the inverse from the cache")
                return(x_inverse)
        }
        data <- x$get()
        x_inverse <- solve(data, ...)
        x$set_inverse(x_inverse)
        return(x_inverse)
        ## Return a matrix that is the inverse of 'x'
}
