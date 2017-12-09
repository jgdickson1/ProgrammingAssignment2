## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 1. This function first initalizes two objects, x and t, of which x is set by the user. t is set to null.
## 2. Next comes the set function which sets the value of x to y in the parent environment based on what the user inupts here. It then sets the object t to NULL which clears t in case it had been chached before.
## 3. The get function retrieves x utilizing lexical scoping, looking up x in the parent environment of makeCacheMatrix 
## 4. the set function sets the matrix itself and sets the t value to this new matrix
## 5. getmatrix retrieves this new value of t based on what the user just defined 
## 6. The last step is generating a list that becomes the output of the function 
makeCacheMatrix <- function(x = matrix()) {
  t <- NULL
  set <- function(y) {
    x <<- y
    t <<- NULL
  }
  get <- function() x
  setmatrix <- function(matrix) t <<- matrix
  getmatrix <- function() t
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
  
}


## Write a short comment describing this function
## 1. This function starts with an input x and then retrives the matrix that the user defined. If that matrix was not defined, or is null, the function returns an error
## 2. If the function is not null, the data function will retrieve the matrix and calculate its inverse using the solve function. It then returns that value to the parent environment.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  t <- x$getmatrix()
  if(!is.null(t)) {
    message("getting cached data")
    return(t)
  }
  data <- x$get()
  t <- solve(data, ...)
  x$setmatrix(t)
  t
}
