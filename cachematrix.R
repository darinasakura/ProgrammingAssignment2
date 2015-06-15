## function to cache an inverse matrix
## function takes a matrix as an argument

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<- function(y){
                x<<-y
                m<<-NULL
        }
        get<-function()x  ## returns x
        setInverseMatrix<-function(solve)m <<- solve #sets variable m to argument passed
        getInverseMatrix<-function()m #returns m 
        list(set = set, get = get,
             setInverseMatrix = setInverseMatrix,
             getInverseMatrix = getInverseMatrix)
        
}


## function that takes a matrix as an argument and returns its inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverseMatrix()
        if(!is.null(m)){ ##if m is not null
                message("getting cached data")
                return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setInverseMatrix(m)
        m
}

