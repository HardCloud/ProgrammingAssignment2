# This function creates a special "matrix" (or rather a list of four 
# other functions that include set, get, setinv and getinv) and caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(solve) inv <<- solve
    getinv <- function() inv
    list(set = set, get = get,setinv = setinv,getinv = getinv)
}


# This function calculates and returns the inverse of a matrix. In order to
# avoid repeating calculations, it first checks if the inverse of the matrix is 
# calculated and cached. If so, it retuns the cached inverse. If not, it 
# calculates the inverse.
# The inverse is then calculated by calling cacheSolve(mat)

cacheSolve <- function(x=matrix(), ...) {
    inv<- x$getinv()
    if(!is.null(inv)) {
        message("getting cached inverse")
        return(inv)
    }
    matr<- x$get()
    inv <- solve(matr, ...)
    x$setinv(inv)
    inv
}
