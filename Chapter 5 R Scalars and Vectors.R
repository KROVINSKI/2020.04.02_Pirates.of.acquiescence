## Hello World
## Author: Pirate Captain Kate with trusty Gus
## Title: Chapter 5 Scalars and Vectors 
## Date: April 2020

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
## 5.0 Scalars and Vectors - examples
#*********************************


# examples
# Crew information
captain.name <- "Jack"
captain.age <- 33

crew.names <- c("Heath", "Vincent", "Maya", "Becki")
crew.ages <- c(19, 35, 22, 44)
crew.sex <- c(rep("M", times = 2), rep("F", times = 2))
crew.ages.decade <- crew.ages / 10

# Earnings over first 10 days at sea
days <- 1:10
gold <- seq(from = 10, to = 100, by = 10)
silver <- rep(50, times = 10)
total <- gold + silver


#*********************************
## 5.1 Scalars 
#*********************************

# The simplest object type in R is a scalar
# A scalar object - single value like a number or a name
# Examples of numeric scalers
a <- 100
b <- 3 / 100
c <- (a + b) / b

# Scalars don’t have to be numeric
# Scalars can be characters (also known as strings)
# Examples of character scalers / strings
d <- "ship"
e <- "cannon"
f <- "Do any modern armies still use cannons?"


#*********************************
## 5.2 Scalars 
#*********************************

# A vector object is a combination of several scalars stored as a single object

# there are many ways to create a vector, many way to use a function to create a vector
# methods we will cover in this chapter:

# c(a, b, ...)  concatenate
# a:b (imagine using with scalars like 1:5, 1 in numerical sequence to 5)
# seq(from, to, by, length.out) , seq(from = 0, to = 6, by = 2), resulting in 0, 2, 4, 6
# replicates - rep(x, times, each, length.out), rep(c(7, 8), times = 2, each = 2), resulting in 7, 7, 8, 8, 7, 7, 8, 8

# 5.2 Creating a vector 
# _ _ _ _ _ _ _ _ _ _ _ 

# Create an object a with the integers from 1 to 5

a <- (1:5)
#print results 
a

# Create an object b with the integers from 6 to 10
b <- (6:10)
#print results
b

# Create an object by combining into a singular vector:
# use the function concatenate
x <- c(a,b)
#print results
x


#5.2a Chatacter Vectors 
# _ _ _ _ _ _ _ _ _ _ _ 

#the concatenate function will bring together scalars and character vectors

# breaking up a sentence in french to be displayed as character vectors

char.vec <- c("Ceci", "nest", "pas", "une", "pipe")


# 5.2.1 a:b function
# _ _ _ _ _ _ _ _ _ _ _ 


#The a:b function takes two numeric scalars a and b as arguments, 
#       and returns a vector of numbers from the starting point a to the ending point b
1:10
##  [1]  1  2  3  4  5  6  7  8  9 10
10:1
##  [1] 10  9  8  7  6  5  4  3  2  1
2.5:8.5
## [1] 2.5 3.5 4.5 5.5 6.5 7.5 8.5

# 5.2.2 seq() function
# _ _ _ _ _ _ _ _ _ _ _ 
# the seq() function needs three agruments from=, to=, and by= 
# fourth arguement*(used instead of by) of the function is optional length.out

# from =        | The start of the sequence
# to =          | The end of the sequence
# by =          | the step size of the sequence
# length.out =  | The desired length of the final sequence (only use if you don’t specify by)


# Create the numbers from 1 to 10 in steps of 1
seq(from = 1, to = 10, by = 1)
##  [1]  1  2  3  4  5  6  7  8  9 10

# Integers from 0 to 100 in steps of 10
seq(from = 0, to = 100, by = 10)
##  [1]   0  10  20  30  40  50  60  70  80  90 100

# Create 10 numbers from 1 to 5
seq(from = 1, to = 5, length.out = 10)
##  [1] 1.0 1.4 1.9 2.3 2.8 3.2 3.7 4.1 4.6 5.0

# 3 numbers from 0 to 100
seq(from = 0, to = 100, length.out = 3)
## [1]   0  50 100


# 5.2.3 rep() function
# _ _ _ _ _ _ _ _ _ _ _ 
# four arguments in the rep() function

# x =           | A scalar or vector of values to repeat
# times =       | The number of times to repeat x
# each =        | The number of times to repeat each value within x
# length.out =  | The desired length of the final sequence

# The rep() function allows you to repeat a scalar (or vector) a specified number of times, 
#                           or to a desired length.

rep(x = 3, times = 10)
#  [1] 3 3 3 3 3 3 3 3 3 3
rep(x = c(1, 2), each = 3)
# [1] 1 1 1 2 2 2
rep(x = 1:3, length.out = 10)
#  [1] 1 2 3 1 2 3 1 2 3 1

#combining times and each

rep(x = 1:3, each = 2, times = 2)
#  [1] 1 1 2 2 3 3 1 1 2 2 3 3


# ! ! ! Vectors contain either numbers or characters, not both ! ! !


#*********************************
## 5.3 Creating Data 
#*********************************


# 5.3.1 sample() function 
# _ _ _ _ _ _ _ _ _ _ _ 

# Sample() function has 4 agruments
# 
# x =           | A vector of outcomes you want to sample from. For example, to simulate coin flips, you’d enter x = c("H", "T")
# size =        | The number of samples you want to draw. The default is the length of x
# replace =     | Should sampling be done with replacement? If FALSE (the default value), then each outcome in x can only be drawn once. If TRUE, then each outcome in x can be drawn multiple times.
# prob =        | A vector of probabilities of the same length as x indicating how likely each outcome in x is. The vector of probabilities you give as an argument should add up to one. If you don’t specify the prob argument, all outcomes will be equally likely.

# The sample() function allows you to draw random samples of elements (scalars) from a vector. 


# From the integers 1:10, draw 5 numbers

sample(x=1:10, size = 5)
# [1] 8 7 5 9 2


# 5.3.2 Normal Distribution 
# _ _ _ _ _ _ _ _ _ _ _ 

#  " rnorm " is the function in R used to create normal distribute curves
# The Normal distribution is bell-shaped, and has two parameters: 
#                                                           a mean & 
#                                                           a standard deviation

# nrom has three different agruments
# nrom()
# n =                     | The number of observations to draw from the distribution.
# mean =                  | The mean of the distribution
# stnd distribution =     | The standard deviation of the distribution

# using different scalars to show relationships

# 5 samples from a Normal dist with mean = 0, sd = 1
rnorm(n = 5, mean = 0, sd = 1)
## [1] -0.0046 -0.0016  1.2226  1.2509  1.8195

rnorm(n = 10, mean = 0, sd = 2)
## [1]  2.6702621  1.1555031 -1.1107844  2.9724793  2.5169163  0.7927735  2.0195098  4.6466513
## [9]  3.3934326  1.9997869


# 3 samples from a Normal dist with mean = -10, sd = 15
rnorm(n = 3, mean = -10, sd = 15)
## [1] -10.67   0.61 -25.94


# 5.3.3 Uniform Distribution 
# _ _ _ _ _ _ _ _ _ _ _ 


# The Uniform distribution gives equal probability to all values between its minimum and maximum values. 
# Everything between its lower and upper bounds are equally likely to occur. 

# function used for uniform distribution runif()
# three arguments 
# runif()
# n =       | The number of observations to draw from the distribution
# min =     | The lower bound of the Uniform distribution from which samples are drawn
# max =     | The upper bound of the Uniform distribution from which samples are drawn


runif(n = 5, min = 0, max = 1)
## [1] 0.0019 0.8019 0.1661 0.3628 0.9268

# 10 samples from Uniform dist with bounds at -100 and +100
runif(n = 10, min = -100, max = 100)
##  [1] -10.8 -37.7   2.2 -38.4 -34.6  46.2 -68.8   5.3  92.9 -14.4




# 5.3.4 Distributions and Random Samples 
# _ _ _ _ _ _ _ _ _ _ _ 










#*********************************
## End of Script | End of Document
#*********************************