## function to cache an inverse matrix

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverseMatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data<-x$get()
        m<-solve(data,..)
        x$setInverseMatrix(m)
        m
}

