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
## t-test , two different populations- how different are the means, are the means equal?


# Age by headband t-test

t.test(formula = age ~ headband,
       data = pirates, 
       alternative ='two.sided')

##Results
##t = 0.35135, df = 135.47, p-value = 0.7259
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  -1.030754  1.476126
#sample estimates:
#  mean in group no mean in group yes 
#27.55752          27.33484 

##the P value is too great to assume that there is a significant statistical relationship

##significant correlation test

cor.test(formula = ~ height + weight,
         data = pirates)


#data:  height and weight
#t = 81.161, df = 998, p-value < 2.2e-16
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
#  0.9232371 0.9396050
#sample estimates:
#  cor 
# 0.9318938 

## the P value is the smallest!
##there is a significant (positive) relationship between a pirate’s height and weight.


# *A*N*O*V*A*
##one-way analysis of variance (ANOVA) is used to determine whether there are any statistically significant differences between the means of three or more independent (unrelated) groups. 
##The one-way ANOVA compares the means between the groups
##Analysis of variance 
##inferences about means are made by analyzing variance

#ANOVA testing if there is a difference between the number of tattoos pirates have based on their favorite sword
# Create tattoos model

tat.sword.lm <- lm(formula = tattoos ~ sword.type,
                   data = pirates)

#Get ANOVA table
anova(tat.sword.lm)


#Analysis of Variance Table

#Response: tattoos
#Df Sum Sq Mean Sq F value    Pr(>F)    
#sword.type   3 1587.8  529.28  54.106 < 2.2e-16 ***
#  Residuals  996 9743.1    9.78                      
#---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
## the P value is the smallest!
##there is a significant (positive) relationship between a pirate’s tattoos and swords.

##Residuals difference from the mean
## One-way ANOVA. A residual is computed for each value. Each residual is the difference between a entered value and the mean of all values for that group. A residual is positive when the corresponding value is greater than the sample mean, and is negative when the value is less than the sample mean.
## There are 996 pirates in this dataframe, 996 residuals 

##regression analysis to see if a pirate’s age, weight, and number of tattoos (s)he has predicts how many treasure chests he/she’s found:

# Create a linear regression model: DV = tchests, IV = age, weight, tattoos

tchests.model <- lm(formula = tchests ~ age + weight + tattoos,
                   data = pirates)

# Show summary statistics
summary(tchests.model)

##summary statistics shown
#Call:
#lm(formula = tchests ~ age + weight + tattoos, data = pirates)

#Residuals:
#  Min      1Q  Median      3Q     Max 
#-33.302 -15.832  -6.860   8.407 119.966 

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  5.19084    7.18437   0.723     0.47    
# age          0.78177    0.13438   5.818 8.03e-09 ***
#  weight      -0.09013    0.07183  -1.255     0.21    
#tattoos      0.25398    0.22550   1.126     0.26    
---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Residual standard error: 23.99 on 996 degrees of freedom
# Multiple R-squared:  0.04056,	Adjusted R-squared:  0.03767 
# F-statistic: 14.04 on 3 and 996 DF,  p-value: 5.751e-09

#p values 0.47, 8.03e-09, .21, and .26 ...AGE is the SIGNIF PREDICTOR OF TREASURE



