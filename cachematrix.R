## To return a matrix x and store x into cache

makeCacheMatrix <- function(x = matrix()) {

return(x)

}


## To calculate the inverse matrix of x, which is created by makeCacheMatrix fun.

cacheSolve <- function(x, ...) {

y<-solve(x)
return(y)
        ## Return a matrix that is the inverse of 'x'
}
