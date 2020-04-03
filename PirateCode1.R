##installing the yarr package and continuing with tutorial

install.packages('yarrr')

library(yarrr)
library(yarr)
??pirates 
?pirates

##I want to see first rows of the dataframe here...

head(pirates)

##I want names of columns 
names(pirates)

##View all - but notice how View has to be capitalized
View(pirates)

## What is the mean age?
mean(pirates$age)
##result should be 27.36

## What is the tallest pirate height?
max(pirates$height)

## How many pirates are there of each sex?
table(pirates$sex)

##"female   male  other 
##   464    490     46"


# Calculate the mean age, separately for each sex
aggregate(formula= age ~ sex,
          data= pirates,
          FUN= mean)


## create a scatterplot, X coordinates as heights and y coordinates as weights
plot(x=pirates$height,
     y=pirates$weight)

##adding customization to the plain scatterplot
plot(x=pirates$height,
     y=pirates$weight,
     main= 'My First Scatterplot of Pirate Data',
     xlab = 'Height (in cm)',
     ylab = 'Weight (in kg)',
     pch = 16,
     col = gray(.0, .1))

## create scatterplot with regression line to show relationship

plot(x=pirates$height,
     y=pirates$weight,
     main= 'My First Scatterplot of Pirate Data',
     xlab = 'Height (in cm)',
     ylab = 'Weight (in kg)',
     pch = 16,
     col = gray(.0, .1))

grid ()

##create a linear regressional model
model <- lm(formula = weight ~ height, 
            data = pirates)

abline(model, col= 'blue')



