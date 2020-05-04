## Hello World
## Author: Pirate Captain Kate with trusty Gus
## Title: Chapter 6 Vector Functions 
## Date: May 2020

#*********************************
##Libraries
#*********************************
library(yarrr)
library(yarr)


#*********************************
##Checking underlying dataframe
#*********************************

dim(pirates)
head(pirates)


#*********************************
##1. Calculate summary statistics
#*********************************

# 10 students from two different classes took two exams.
#  Here are three vectors showing the data
midterm <- c(62, 68, 75, 79, 55, 62, 89, 76, 45, 67)
final <- c(78, 72, 97, 82, 60, 83, 92, 73, 50, 88)


# How many students are there?
length(midterm)
## [1] 10

# Add 5 to each midterm score (extra credit!)
midterm <- midterm + 5
midterm
##  [1] 67 73 80 84 60 67 94 81 50 72

# Difference between final and midterm scores
final - midterm
##  [1] 11 -1 17 -2  0 16 -2 -8  0 16






#*********************************
## End of Script | End of Document
#*********************************