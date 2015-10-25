
###Intro

The two functions in the cachematrix.R file are used to create a
special "matrix" object  that stores a matrix and caches its inverse.

`makeCacheMatrix`: creates a special "matrix" object that can cache its inverse.

`cacheSolve`: computes the inverse of the special "matrix" object created by 
`makeCacheMatrix` above. Doing so, it first checks to see if the inverse has already been calculated (and the matrix has not changed). If so, it `get`s the inverse from the cache and skips the computation. Otherwise, it calculates the matrix and `set`s the value of the inverse in the cache via the `setinv`function.

###Examples
mat<-makeCacheMatrix()
mat$set(matrix(1:9,3,3))
cacheSolve(mat)
mat$set(matrix(1:4,2,2))
cacheSolve(mat)
mat$set(matrix(c(1,0,6,2,2,3,4,0,55)3,3))
cacheSolve(mat)
cacheSolve(mat) (A second time to see if the inverse has been cached)
