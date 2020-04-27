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








#*********************************
## End of Script | End of Document
#*********************************