# Given assignment2.csv file from GitHub I created and added the file manually from my computer to GitHub so I can practice using GitHub.
#assign the cloned GitHub File from the internet into variable called assignment_file 
# using function read.csv assign the file to assignement2 variable. 
assignment_file <- "https://raw.githubusercontent.com/Trevor214/LIS-rProgramming/main/Module%202/assignment2.csv"
assignment2 <- read.csv(assignment_file)
assignment2
#The file is downloaded as a data frame.
str(assignment2)
# The file looks correct on the GitHub however when downloaded the first element is shown as "X16" and is shown as the name of the column.
# I set the wrongful column name into a variable called error and used functions gsub and as.numeric to change the class type to a numeric.
error <- colnames(assignment2)
error <- gsub("X","", error)
class(error)
corrected_error <-as.numeric(error)
class(corrected_error)
# The error is still the incorrect showing for the data so I changed the column name to Assignment 2
new_col_name <- colnames(assignment2)
new_col_name[1] <- "Assignment 2"
colnames(assignment2) <- new_col_name
colnames(assignment2)
assignment2
# Then used rbind to add the corrected error to the data as it should be from the original .csv file and we make a new df1 dataframe to be able to call the dataframe easily
# and to change elements without disrupting the original if in case the changes get to far. 
df1 <- rbind(assignment2, corrected_error)

str(df1)
# df1 is still structured as "data frame" and we cannot calculate anything without using brackets to call specific cells. 
# using brackets once I reassign df1 to double to use for calculations
df1 <- df1[,1]
df1
typeof(df1)

# The original file is downloads incorrectly. creating a new .csv file to upload to the GitHub
write.csv(df1, "assignment2_updated.csv")
#Used the Git commands to upload file to GitHub
#==============================================================================================
# Using the given function called myMean we use df1 as an argument
#However the arguments inside the functions use variables that we do not initialize therefore we should modify the function to take a universal argument "x"
#myMean <- function(df1)
#  {
#  return(sum(assignment)/length(someData))
#}
#myMean(df1)

#Updated function to have argument of x to pass through
myMean <- function(x)
{
  return(sum(x)/length(x))
}
# Calling the created function it passes df1 through the function and returns 19.25
myMean(df1)
#Usiing the built in function for the mean we find that our updated created function is 19.25
mean(df1)
# Testing some more data sets to see if our function works correctly for different sets I will just create vectors to pass through nyMean
test1 <- c(2,5,6,2,6,8,6,4,3,3,9,7)
test2 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
test3 <- c(4, 6, 1, 5, 3, 8, 8,8, 8, 8, 9 ,7)
# creating a testing function we can pass two arguments one will be myMean function and the built in mean() function and compare them with an if else statement.
testFun <- function (x, y)
{
  if (x == y)
    print("PASS")
  else
    print("FAIL")
}
testFun(myMean(test1), mean(test1))
testFun(myMean(test2), mean(test2))
testFun(myMean(test3), mean(test3))
