# Module 8 Assignment
# Trevor Cone 
#March 7, 2022
#Load libraries
#install.packages("Rcpp")
library(pryr)
library(ISLR)
library(boot)
library(data.table)
library(plyr)
library(Rcpp)
# 1) Import data set
StudentAssignmentFile <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")
StudentAssignmentFile
# Using ddply we find the grade average split between the given genders
StudentAverage <- ddply(StudentAssignmentFile, "Sex", transform, Average = mean(Grade))
# Put the sorted averages into a dataframe
dfGenderedMeans <- data.frame(StudentAverage)
# Write table of the gendered means called sorted average
write.table(dfGenderedMeans, "Sorted_Average")
# using subset and grepl to filter tha names of the original student file to find names with the letter i/I
i_students <- subset(StudentAssignmentFile, grepl("[iI]", StudentAssignmentFile$Name, ignore.case = TRUE))
i_students 
# Put those names into a data frame to show data of peoople with i's in their name
Inamesdf <- data.frame(i_students)
# write it to a csv file.
write.csv(Inamesdf, file = "filtered_data.csv")
