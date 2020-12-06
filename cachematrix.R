## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   t <-  NULL   
   set <- function(y) 
   {
     x <<- y
     t <<- NULL
   }
   
   get_mat <- function()x
   
   set_inv <- function(inv_mat) m <<- inv_mat
   
   get_inv <- function() t
   
   list(set  = set, get_mat = get_mat, set_inv = set_inv, get_inv = get_inv)
}

## makeCache creates and caches a value variable which would contain t which would 
## contain the cached value of the inverse of a matrix
## 'makeCache' then  returns a list ofuf nctions which are used to set the value of
## matrix, get the value of a matrix, sets the value of the inverse of 
## a matrix and gets the inverse of a matrix. The funtions returned are 
## subsequently used by Cachesolve



## Write a short comment describing this function

cacheSolve <- function(x , ...) {
        
  t <- x$get_inv()
  if (!is.null(t))
  {
    return(t)
  }
 
  mate <- x$get()
  
   t <- solve(x,...)
   x$set_inv(t)
    t
     
}

## upon being provided with a matrix x, cacheSolve first tries to get the 
## inverse of the matrix in a cached variable. if this exits, it return the value
## however if the matrix has no cached inverse stored, the inverse is
## calculated with the solve function. this calculated inverse is then cached and 
## returned