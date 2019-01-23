#List is a special vector. Each element can be a different class

x <- list(c(1,3), "a", TRUE, 1+4i)
x <- 1:10
x <- as.list(x)
length(x)
x
x[1]
x[[1]]
# Create a list.
list1 <- list(c(2,5,3),21.3,sin)

# Print the list.
print(list1)

xlist <- list(a = "Rich FitzJohn", b = 1:10, data = head(iris))
xlist


temp <- list(list(list(list())))
temp
is.recursive(temp)