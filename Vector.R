
#Create an empty vector with vector()

x <- vector()
# with a pre-defined length
x <- vector(length = 10)
# with a length and type
vector("character", length = 10)
vector("numeric", length = 10)
vector("integer", length = 10)
vector("logical", length = 10)

#The general pattern is vector(class of object, length). You can also create vectors by concatenating them using the c() function.
x <- c(1, 2, 3.333)
x1 <- c(1L, 2L, 3L)
y <- c(TRUE, TRUE, FALSE, FALSE)
z <- c("Alec", "Dan", "Rob", "Rich")

#Examine your vector
typeof(z)
length(z)
class(z)
str(z)

#Add elements
z <- c(z, "Annette")
z

#More examples of vectors
x <- c(0.5, 0.7)
x <- c(TRUE, FALSE)
x <- c("a", "b", "c", "d", "e")
x <- 9:100
x <- c(1+0i, 2+4i)

#as sequence of numbers
series <- 1:10
seq(10)
seq(1, 10, by = 0.1)
#*******************************
# Create a vector.
apple <- c('red','green',"yellow")
print(apple)

# Get the class of the vector.
print(class(apple))

#**************************************coercion*****************
#The coercion will move towards the one that's easiest to coerce to
#The coersion rule goes logical -> integer -> numeric -> complex -> character.
#implicit coercion
xx <- c(1.7, "a")
xx <- c(TRUE, 2)
xx <- c("a", TRUE)

#coerce vectors explicitly
as.numeric()
as.character()

x <- 0:6
as.numeric(x)
as.character(x)
as.complex(x)

#Sometimes coercions, especially nonsensical ones won't work.
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
# both don't work

#implicit conversion
1 < "aa" -- first it will convert to character and then do lexicographical order string comparison(means unicode comparison)
"riswan" > 8
1 < "a"

#indexing
# Accessing vector elements using position.
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)

# Accessing vector elements using logical indexing.
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)

# Accessing vector elements using negative indexing.
x <- t[c(-2,-5)]
print(x)

# Accessing vector elements using 0/1 indexing.
y <- t[c(0,0,0,0,0,0,1)]
print(y)




