## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL;
	set <- function(updt){
		x <<- updt;
		inv <<-NULL;
	}
	get <- function() x;
	setInv <- function(updt_inv) inv <<- updt_inv;
	getInv <- function() inv;
	list( set = set
		 ,get = get
		 ,setInv = setInv
		 ,getInv = getInv )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	inv <- x$getInv()
	if( !is.null(inv) ){
		message( "Getting cached data" );
		return(inv);
	}
	data <- x$get();
	inv <- solve(data);
	x$setInv(inv);
	inv;
}
