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
##6.0 Calculating summary statistics
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


# Each student's average score
(midterm + final) / 2
##  [1] 72 72 88 83 60 75 93 77 50 80

# Mean midterm grade
mean(midterm)
## [1] 73

# Standard deviation of midterm grades
sd(midterm)
## [1] 13

# Highest final grade
max(final)
## [1] 97

# z-scores
midterm.z <- (midterm - mean(midterm)) / sd(midterm)
final.z <- (final - mean(final)) / sd(final)



#*********************************
##6.1 Arithmetic operations on vectors
#*********************************

#establishing vectors:
a <- c(1, 2, 3, 4, 5)
b <- c(10, 20, 30, 40, 50)

a + 100
## [1] 101 102 103 104 105
a + b
## [1] 11 22 33 44 55
(a + b) / 10
## [1] 1.1 2.2 3.3 4.4 5.5


## Operations on a scalar in a vector
# If you do an operation on a vector with a scalar, 
# R will apply the scalar to each element in the vector. 


# Take the integers from 1 to 10, then add 100 to each
1:10 + 100
##  [1] 101 102 103 104 105 106 107 108 109 110


# Different types of arthmetic 
a <- 1:10
a / 100
##  [1] 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.10
a ^ 2
##  [1]   1   4   9  16  25  36  49  64  81 100



#*********************************
##6.1.1 Basic math with multiple vectors
#*********************************


# Vectors of the same length
c(1, 2, 3, 4, 5) + c(5, 4, 3, 2, 1)
## [1] 6 6 6 6 6


#Vectors of the same length will make for easy products of those vectors
a <- 1:5
b <- 1:5

ab.sum <- a + b
ab.diff <- a - b
ab.prod <- a * b

ab.sum
## [1]  2  4  6  8 10
ab.diff
## [1] 0 0 0 0 0
ab.prod
## [1]  1  4  9 16 25


#*``*``*``*``*``*``*``*``*``*``*``
## Example
## Pirate Bake Sale
#*``*``*``*``*``*``*``*``*``*``*``


pies <- c(3, 6, 2, 10, 4)
cookies <- c(70, 40, 40, 200, 60)

# calculate the total number sold
total.sold <- pies + cookies
total.sold
## [1]  73  46  42 210  64


#*********************************
##6.2 Summary Statistics
#*********************************

 # functions that apply to continuous data
 # Continuous data = data that can take on an infinite number of values

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~` 
# Table 6.1: Summary statistic functions for continuous data.               |
# Function	                Example	                    Result              |
#                                                                           |
# sum(x), product(x)        sum(1:10)                   55                  |
#                                                                           |
# min(x), max(x)            min(1:10)                   1                   |
#                                                                           |
# mean(x), median(x)        mean(1:10)                  5.5                 |
#                                                                           |
# sd(x), var(x),            sd(1:10)                    3.03                |
# range(x)                                                                  |
#                                                                           |
# quantile(x, probs)        quantile(1:10, probs = .2)  2.8                 |
#                                                                           |
# summary(x)                summary(1:10)               Min = 1.00.         |
#                                                       1st Qu. = 3.25,     |
#                                                       Median = 5.50,      |
#                                                       Mean = 5.50,        |
#                                                       3rd Qu. = 7.75,     |
#                                                       Max = 10.0          |
#                                                                           |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`


# Descriptive statistics from some pirate related data.

tattoos <- c(4, 50, 2, 39, 4, 20, 4, 8, 10, 100)
min(tattoos)
## [1] 2
mean(tattoos)
## [1] 24
sd(tattoos)
## [1] 31



#*********************************
##6.2.1 Length Function
#*********************************
#  length() ``````````````````````````````````````````````````  |
#  Vectors have one dimension: their length                     |
#  Joining/Combining Vectors & Higher Dimensional objects:      |
#                                                 matrices      |
#                                                 dataframes    |
#  Ensure : all the vectors (you combine) have the same length  |
# ``````````````````````````````````````````````````````````````


a <- 1:10
length(a)  # How many elements are in a?
## [1] 10

b <- seq(from = 1, to = 100, length.out = 20)
length(b)  # How many elements are in b?
## [1] 20

length(c("This", "character", "vector", "has", "six", "elements."))
## [1] 6

length("This character scalar has just one element.")
## [1] 1




#*********************************
##6.2.2 Additional numeric vector functions
#*********************************

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~` 
#         Table 6.2: Vector summary functions for continuous data.                  |
# Function	        Description	              Example	                 Result       |
#                                                                                   |
# round(x,          Round elements in x to    round(c(2.231, 3.1415), 2.2, 3.1      |
# digits)           digits digits             digits = 1)                           |
#                                                                                   |                  
round(c(2.231, 3.1415), digits =1)
# [1] 2.2 3.1                                                                       |
#                                                                                   |
# ceiling(x),       Round elements x          ceiling(c(5.1, 7.9))    6, 8          |
# floor(x)          to the next highest                                             |
#                   (or lowest) integer                                             |

ceiling(c(5.1, 7.9))                                                                
# [1] 6 8                                                                           |
floor(c(5.1, 7.9))    
# [1] 5 7                                                                           |

# x %% y            Modular arithmetic (ie.   7 %% 3                  1             |
#                   x mod y)                                                        |
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`


#*********************************
##6.2.3 Sample statistics from random samples
#*********************************

#  R draws random samples using the rnorm() and runif() functions
#  R Random Sampling
#  Functions
#       rnorm()
#       runif()

#  Calculate summary statistics 
#  Functions 
#       mean()
#       sd()



# 5 samples from a Normal dist with mean = 10 and sd = 5
x <- rnorm(n = 5, mean = 10, sd = 5)

# What are the mean and standard deviation of the sample?
mean(x)

sd(x)


# 100,000 samples from a Normal dist with mean = 10, sd = 5
y <- rnorm(n = 100000, mean = 10, sd = 5)

mean(y)
## [1] 10
sd(y)
## [1] 5




#*********************************
## 6.3 Counting statistics
#*********************************
# Common counting functions
#                 of discrete 
#                 of non-numeric data

# Following arguments to these functions can be either numeric or character

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~` 
#                 Table 6.3: Counting functions for discrete data.                  |
#                                                                                   |
# Function	        Description	            Example	                Result          |
# unique(x)         Returns a vector                                                |
#                   of all unique values.   unique(c(1, 1, 2, 10))  1, 2, 10        |
#
# table             Returns a table         table(c("a",            2-"a",          |
#   (x, exclude)    showing all the unique        "a", "b", "c"))     1-"b",        |
#                   values as well as a                                 1-"c"       |  
#                   count of                                                        |
#                   each occurrence.                                                |
#                   To include                                                      |
#                   a count of NA values,                                           |
#                   include the argument                                            |
#                   exclude = NULL                                                  |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`


# testing two vectors of discrete data: 

vec <- c(1, 1, 1, 5, 1, 1, 10, 10, 10)
gender <- c("M", "M", "F", "F", "F", "M", "F", "M", "F")


# *U*N*I*Q*U*E* 
# unique(x) functions 
# unique - shows unique values in the vector, 
#       unique function limitations : No indication of how often each value occurs.

# Examples:
unique(vec)
## [1]  1  5 10
unique(gender)
## [1] "M" "F"



# *T*A*B*L*E*
#  table() similar function as unique
#  table() shows unique valves & frequency of the unique values occurs

# Examples:
table(vec)
## vec
##  1  5 10 
##  5  1  3
table(gender)
## gender
## F M 
## 5 4

# table of percentages instead of counts
table(vec) / sum(table(vec))
# vec
# 1         5        10 
# 0.5555556 0.1111111 0.3333333 

table(gender) / sum(table(gender))
# gender
# F         M 
# 0.5555556 0.4444444 

#
# 


#*********************************
## 6.4 Missing (NA) values
#*********************************

# Descriptive statistics need NA values dealt with prior to preforming arguments 
a <- c(1, 5, NA, 2, 10)
mean(a)
## [1] NA


# descriptive statistic functions need to be told to ignore NA values
#             include the argument na.rm = TRUE in the function

mean(a, na.rm = TRUE)
#[1] 4.5



# 
# 
#             
# 
# 
# 
#             
# 
# 
# 






#*********************************
## End of Script | End of Document
#*********************************