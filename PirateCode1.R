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
##Weights : an optional vector of weights to be used in the fitting process. Should be NULL or a numeric vector. If non-NULL, weighted least squares is used with weights weights (that is, minimizing sum(w*e^2)); otherwise ordinary least squares is used.
##na.action :  function which indicates what should happen when the data contain NAs. The default is set by the na.action setting of options, and is na.fail if that is unset. The ‘factory-fresh’ default is na.omit. Another possible value is NULL, no action. Value na.exclude can be useful.
##Model : the method to be used; for fitting, currently only method = "qr" is supported; method = "model.frame" returns the model frame (the same as with model = TRUE, see below). model, x, y, qr logicals. If TRUE the corresponding components of the fit (the model frame, the model matrix, the response, the QR decomposition) are returned.
##Singular : .ok logical. If FALSE (the default in S but not in R) a singular fit is an error.
##Contrasts : an optional list.
##Offset :  this can be used to specify an a priori known component to be included in the linear predictor during fitting. This should be NULL or a numeric vector or matrix of extents matching those of the response. One or more offset terms can be included in the formula instead or as well, and if more than one are specified their sum is used.

#abline(model, col= 'blue') 
##This function adds one or more straight lines through the current plot
##The tool aplot has a number of functions


##Scatter plots show the relationship between two independent variables 
##next section- data between dependent and independent variables

pirateplot(formula = age ~ sword.type,
           data = pirates,
           main = "Pirateplot of ages by favorite sword")

pirateplot(formula = height ~ sex,
           data = pirates,
           main = "Pirateplot of height by sex",
           pal = "pony",
           theme = 3)


##The "pony" palette is a preloaded palette in the Yarrr package
##contained in the piratepal() function. 
##Investigation into origins of the palette from the package:

piratepal(palette = "pony",
          plot.result = TRUE,
          trans = .1)

##two-sample t-test

