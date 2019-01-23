"Matrices are a special vector in R. They are not a separate class of object but simply a vector 
but now with dimensions added on to it. Matrices have rows and columns."

#Matrices are constructed columnwise.

# Create a matrix.
M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)



m <- matrix(nrow = 2, ncol = 2)
m
dim(m)
attributes(m)

m <- matrix(1:6, nrow=2, ncol =3)


m <- 1:10
dim(m) <- c(2,5)

x <- 1:3
y <- 10:12
cbind(x,y)
# or
rbind(x,y)

