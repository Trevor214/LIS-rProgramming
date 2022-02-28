# mtcars test for generic functions
list(mtcars)
plot(mtcars)
print(mtcars) # Because it doesn't throw and error/warning these functions
# are generic.

#examples of s3
names <- c("John", "Sally", "Sam")
ages <- c(21, 24, 25)
gpa <- c(3.4, 3.6, 3,3)
example1 <- data.frame(mtcars$mpg, mtcars$cyl)
example2 <- data.frame(names,ages)
is.object(example1)
is.object(example2) # both return true for s3
#examples of s4
example3 <- setClass("Student", representation(name = "character",age = "numeric",gpa = "numeric"))
isS4(example3) # returns True
example4 <- new("Student", name = "Trevor", age = 26, gpa = 3.5)
example4
isS4(example4) #returns True for s4