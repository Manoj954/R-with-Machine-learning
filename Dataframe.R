"* Data frames are tabular data objects. Unlike a matrix in data frame each column can contain different modes of data. 
* The first column can be numeric while the second column can be character and third column can be logical. 
* It is a list of vectors of equal length.
* Data Frames are created using the data.frame() function."

"A data frame is a very important data type in R. It's pretty much the de facto data structure for most tabular data and what we use for statistics.

data frames can have additional attributes such as rownames(). This can be useful for annotating data, like subject_id or sample_id. But most of the time they are not used.

e.g. rownames() useful for annotating data. subject names. other times they are not useful.

Data frames Usually created by read.csv and read.table.

Can convert to matrix with data.matrix()

Coercion will force and not always what you expect.

Can also create with data.frame() function."

#A data frame is a special type of list where every element of a list has same length.

# Create the data frame.
BMI <- 	data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)
print(BMI)


df <- data.frame(id = letters[1:10], x = 1:10, y = rnorm(10))
df
data.frame(z = 4)
cbind(df, data.frame(z = 4))#When you combine column wise, only row numbers need to match. If you are adding a vector, it will get repeated.

#Useful functions
head(df) # see first 5 rows 
tail(df) # see last 5 rows 
dim(df) # see dimensions 
nrow(df) # number of rows 
ncol(df) # number of columns 
str(df) # structure of each column 
names(df) # will list column names for a data.frame (or any object really).



is.list(iris)
class(iris)

#Naming objects
#Other R objects can also have names not just true for data.frames. Adding names is helpful since it's useful for readable code and self describing objects.

x <- 1:3
names(x) <- c("rich", "daniel", "diego")
x

#list can also have names
x <- as.list(1:10)
names(x) <- letters[seq(x)]
x

#matrices can have names and these are called dimnames
m <- matrix(1:4, nrow = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
# first element = rownames
# second element = colnames
m



