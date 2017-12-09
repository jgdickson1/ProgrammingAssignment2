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

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
