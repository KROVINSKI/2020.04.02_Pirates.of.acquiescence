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

##LM "lm" Linear Mode. Fitting Linear Models is the tool used above
## lm is used to fit linear models. It can be used to carry out regression, single stratum analysis of variance and analysis of covariance (although "aov" may provide a more convenient interface for these).
## Usage : lm(formula, data, subset, weights, na.action,
##           method = "qr", model = TRUE, x = FALSE, y = FALSE, qr = TRUE,
##            singular.ok = TRUE, contrasts = NULL, offset, …)


##Models for lm are specified symbolically. 
## A typical model has the form response ~ terms (Notice the tilde!)
## where response is the (numeric) response vector and 
## terms is a series of terms which specifies a linear predictor for response. 

## <*))>< in the Pirate example, the response in the number response vector is weight
## <*))>< the linear predictor for the response is height

## Formula
## an object of class "formula" ("or one that can be coerced to that class"... one that you can bend into the rsponse and terms relationship)
## : a symbolic description of the model to be fitted. 

# A*G*A*I*N*

## Usage : lm(formula, data, subset, weights, na.action,
##           method = "qr", model = TRUE, x = FALSE, y = FALSE, qr = TRUE,
##            singular.ok = TRUE, contrasts = NULL, offset, …)

##Data : n optional data frame, list or environment (or object coercible by as.data.frame to a data frame) containing the variables in the model. If not found in data, the variables are taken from environment(formula), typically the environment from which lm is called.
##Subset : an optional vector specifying a subset of observations to be used in the fitting process.

