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

# c(a, b, ...)  conc












#*********************************
## End of Script | End of Document
#*********************************