## Hello World
## Author: Pirate Captain Kate with trusty Gus
## Title: Chapter 4 R Basics
## Date: April 2020

#*********************************
##Libraries
#*********************************
library(yarrr)
library(yarr)
library(BayesFactor)

#*********************************
##Checking underlying dataframe
#*********************************

dim(pirates)
head(pirates)


#*********************************
## 4.1 Command Line- The Console
#*********************************

## symbol in brackets is called a prompt [ > ]
1 + 1
## view from the console:
## > 1 + 1
## [1] 2
## > 

## the one inside the brackets refers to the index of the value 
## Mac Users Command–Return shortcut to take things from the source window into the console without highlighting and hitting run

##R isn’t just meant to be read by a computer, it’s also meant to be read by other humans – or very well-trained dolphins"

#*********************************
## 4.2 Commenting
#*********************************

# Step 1: Load the yarrr package
#library(yarrr)

# Step 2: See the column names in the movies dataset
names(movies)
#results should display
# [1] "name"              "rating"            "genre"             "creative.type"    
# [5] "time"              "year"              "production.method" "sequel"           
# [9] "budget"            "revenue.all"       "revenue.dom"       "revenue.int"      
# [13] "revenue.inf"  

# Step 3: Calculations

# What percent of movies are sequels?
?mean
#When na. rm is TRUE, the function skips over any NA values.
mean(movies$sequel, na.rm = T)
#sequel <- c(movies$sequel)
#print(sequel)


# How much did Pirate's of the Caribbean: On Stranger Tides make?
# [ == ] is logical operator meant to compare if two things are exactly equal.
movies$revenue.all[movies$name == 'Pirates of the Caribbean: On Stranger Tides']


#*********************************
## 4.3 Spacing
#*********************************

# Shitty looking code
t.test(formula=revenue.all~sequel,data=movies)
plot(x=movies$budget,y=movies$dvd.usa,main="myplot")

# readable code
t.test(formula = revenue.all ~ sequel,
       data = movies)

plot(x = movies$budget,
     y = movies$dvd.usa,
     main = "myplot")



#*********************************
## 4.3 Objects and Functions 
#*********************************
# R revolves around two things: objects and functions
#

# 1: Create a vector object called tattoos
tattoos <- c(4, 67, 23, 4, 10, 35)

# 2: Apply the mean() function to the tattoos object
mean(tattoos)
## [1] 24

# mean in the function 
# what's the object?
# An object is a thing
# An object can be a number, a dataset, a summary statistic like a mean or standard deviation, or a statistical test. 
# Objects come in many different shapes and sizes in R. 
# There are simple objects like which represent single numbers, vectors

#Anaylsis itself can be an object:
#more complex objects like hypothesis tests or regression which contain all sorts of statistical information.


#* * * * * * * * * * * * * * * * *
## 4.3a Objects (types of objects) 
#* * * * * * * * * * * * * * * * *
# Vector of data [length attribute] = how many numbers are in the vector
# Hypothesis test [many attributes] such as  (1)test-statistic  and (2) p-value


#* * * * * * * * * * * * * * * * *
## 4.3b Functions (types) 
#* * * * * * * * * * * * * * * * *

# What is a function? 
# A function is a procedure 
# This procedure typically takes one or more objects as arguments
# The procedure (1+ objects) as arguements/inputs manipulates/operates on those objects, then returns a new object.
# the output of the function is a new object

# Example
# Function............- the mean() 
# Object..............- vector of numeric data - e.g. Tattoos 
# Function's Agrument.- calculating the arithmetic mean
# Output..............- single number (a scalar) as result




#*********************************
## 4.4 Objects - Numeric and Characters 
#*********************************

# Character objects- need quotations around them
# certain functions are only meant for either numeric or character type objects


#* * * * * * * * * * * * * * * * *
## 4.4a Objects - Assignment  
#* * * * * * * * * * * * * * * * *


# using <- to make assigments
a <- 100
print(a)
#results
# > print(a)
# [1] 100



a<- 1
b<- 100
a + b
#Results view from Console
#> a<- 1
#> b<- 100
#> a + b
# [1] 101

c <- a + b 
print(c)

#* * * * * * * * * * * * * * * * *
## 4.4a Objects - Assignment Names
#* * * * * * * * * * * * * * * * *

# Object Names
# Valid object names
group.mean <- 10.21
my.age <- 32
FavoritePirate <- "Jack Sparrow"
sum.1.to.5 <- 1 + 2 + 3 + 4 + 5

#case sensitive
# These are all different objects
Plunder <- 1
plunder <- 100
PLUNDER <- 5

blackpearl.usd <- 634954103

# Create a new object called blackpearl.eur 
# blackpearl.eur converts our original value to Euros 
# assumption -  1 USD = 0.88 EUR 
blackpearl.eur <- blackpearl.usd * 0.88
blackpearl.eur

#result
# [1] 558759611

#Creating an object for Deadman's chest gross movie sales
deadman.usd <- 1066215812
# How much did the sequel make compared to the original? divide deadman.usd by blackpearl.usd
deadman.usd / blackpearl.usd
#Result
#1] 1.679201

gold.in.2015 <- 101600

plank.list <- "Skippy McGee"
print(plank.list)


#*********************************
## End of Script | End of Document
#*********************************

