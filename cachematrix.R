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


## Write a short comment describing this function

cacheSolve <- function(x , ...) {
        ## Return a matrix that is the inverse of 'x'
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
