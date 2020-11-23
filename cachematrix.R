## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function retrieves the information of a  square 
## matrix function. 
## The function then calculates the inverse of the same 
## square matrix. 
## Finally, this function caches the output of the matrix as 
## well as the inverse of the matrix output.
  
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
    
  }
  
## Write a short comment describing this function
## This function retrieves the cached information 
## which is the inverse output of the square matrix output
## of the initial square matrix that was retrieved and cached
## in the makeCacheMatrix function.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i))
  {
    message("getting cached data")
    return(i)
  }
  
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}

## Return a matrix that is the inverse of 'x'

H <- matrix(1:4,2,2)

H
[,1] [,2]
[1,]    1    3
[2,]    2    4



