## Put comments here that give an overall description of what your
## functions do

##This function will allow me to set the value of the matrix, get the value of the matrix, set the value of the inverse and get the value of the inverse
## This function will feed into cacheSolve()

makeCacheMatrix <- function(x = matrix()) {
inv = NULL
set = function(y){
x <<- y
inv <<- NULL
}
get = function () x
setinv = function(inverse) inv <<- inverse
getinv = function() inv
list(set=set, get=get, setinv=setinv, getinv=getinv)
}

## This function looks to see if hte inverse has already been calculated. If not, it caclulates the inverse and sets the value in the cache data.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv = x$getinv()
if (!is.null(inv)){
  message("obtaining cached data")
  return(inv)}
mat.data = x$get()
inv = solve(mat.data, ...)
x$setinv(inv)
return(inv)
}

