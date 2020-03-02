# Programming Assignment 2: Lexical Scoping
# David Redman
#Assignment is to write a pair of functions that cache the inverse of a matrix
# 1st function is makeCacheMatrix: This function creates a special matrix object tha can cache its inverse
# 2nd cacheSolve: Computes the inverse of the matrix returned by makeCacheMatrix


# makevector from the assignment instruction, I tried this code from the instruction but get an error message 
# that reads "Error in -function() { : invalid argument to unary operator" I can't find an answer on the web
# that works for this error message.  "Both code block" have the same error message.
# makevector from the assignment instruction,used as example to do the assignment
# makeVector <- function(x = numeric()){
#   m <- NULL
#   set <- function(y){
#     x <<- y
#     m <<- NULL
#}
#    get <- function()x
#    setmean <- function(mean) m <<- mean
#    
#    getmean <- function() m
#    
#    list(set = set, get = get,
#       setmean = setmean,
#       getmean = getmean)
#}
#
# cachemean from the assignment instructions 
#
#cachemean <-function(x, ...) {
# m <-x$getmean()
# if(!is.null(m)){
#        message("getting cached data")
#        return(m)
#    }
#  data<- x$get()
#  m<- mean(data, ...)
#  x$setmean(m)
#  
#  m
#}

#
#                                           Assignment for the makeCacheMatrix
#

makeCacheMatrix <- function(m = matrix()){
    
    cinver <- NULL
    
    set <- function(y){
        
        m <<- y
        cinver <- NULL
        
    }
    
    get <- function(){
        
        m 
        }
    
# set inverse
    
    setinverse <- function(inverse) {
        
        cinver <<- inverse
        
    }
    
# Get inverse   
    
    getinverse <- function(){
        
        cinver
    }
    
# list
    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}



#
#    Assignment for the cacheSolve
#

cachesolve <- function(x,...){
    
## return the matrix that is the inverse of x
    
    cinver <- x$getinverse()
    if(!is.null(cinver)){
        
        message("getting cached data")
        return(cinver)
    }

    data <- x$get()
    cinver <- solve(data, ...)
    x$setinverse(cinver)
    
    cinver
}

#Test
# mytest <- makeCacheMatrix(matrix(1:8,4,4))
# mytest$get()
# mytest$getinverse()
# cachsolve(mytest)
# cachsolve(mytest) ## repeated 
# mytes$getinverse()





