## Hello World
## Author: Pirate Captain Kate with trusty Gus 
## Title: Writing Good Stack Overflow Questions: How to create a Reproducible Example in R using reprex 
## Date: May 2020

#*********************************
##Libraries
#*********************************
## install.packages("reprex")
## devtools::install_github("tidyverse/reprex")
## When using a reprex all the libraries that you use in the example need to be there
#                                                              can't just have reprex 
#install.packages(datapasta)

library(reprex)
library(datapasta)
library(dplyr) 


#*********************************
## Working Directory
#*********************************


setwd("/Users/katherinerovinski/GIT/2020.04.02_Pirates.of.acquiescence")



#*********************************
## Example Dataframe with reprex
#*********************************

## Having trouble finding your variables in the global environment?
## Getting started fresh - clearing the global environment tab Ctrl+Shift+F10 
## or use the following code : rm(list = ls())
rm(list = ls())


starwars <- starwars
## Filter the data by planet


## Setting a question up to have a mistake: 
## tatooine 
## Run from # Break point A to # Break point B, places code on the clipboard


# Break point A 

library(dplyr) 
starwars %>%
  filter(homeworld == "Tatooine") %>%
  select(name, height, mass, hair_color) -> tatooine 

# Break point B 

# now that item is on the clip board
# run the repex command
reprex()


#*********************************
## Example Dataframe with datapasta
#*********************************



# Minimal Dataset (Sample Data)
# You need to provide a data frame that is small enough to be 
#   (reasonably) pasted on a post, but big enough to reproduce your issue.


head(iris)
# results
# Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa


head(iris, 5)[, c('Sepal.Length', 'Sepal.Width')]
#>   Sepal.Length Sepal.Width
#> 1          5.1         3.5
#> 2          4.9         3.0
#> 3          4.7         3.2
#> 4          4.6         3.1
#> 5          5.0         3.6





# If you don't have done it already, You have to install datapasta first with
# install.packages("datapasta")
df.iris <- data.frame(
  Sepal.Length = c(5.1, 4.9, 4.7, 4.6, 5),
   Sepal.Width = c(3.5, 3, 3.2, 3.1, 3.6)
)

df.iris

#writing the CSV df.iris

write.csv(df.iris, "df.iris.csv", row.names = FALSE)

# I've opened the CSV in excel
# I've selected the columns and rows I want
# I'm back in R studio 
# I've navigated to addins
tibble::tribble(
  ~Sepal.Length, ~Sepal.Width,
            5.1,          3.5,
            4.9,            3,
            4.7,          3.2,
            4.6,          3.1,
              5,          3.6
  )



datapasta::df_paste(head(iris, 5)[, c('Sepal.Length', 'Sepal.Width')])
# This is the sample data that you have to use in your reprex.
data.frame(
  Sepal.Length = c(5.1, 4.9, 4.7, 4.6, 5),
  Sepal.Width = c(3.5, 3, 3.2, 3.1, 3.6)
)



dput(head(iris, 5)[c("Sepal.Length", "Sepal.Width")])
#> structure(list(Sepal.Length = c(5.1, 4.9, 4.7, 4.6, 5), Sepal.Width = c(3.5, 
#> 3, 3.2, 3.1, 3.6)), row.names = c(NA, 5L), class = "data.frame")



# Once you’ve installed datapasta, 
# you simply copy a selected number of rows from your spreadsheet 
# (remember, this is a minimal reproducible example), 
# and click the Paste as tribble option from the DATAPASTA section of the 
# Addins dropdown

# more on this tutorial :
# https://maraaverick.rbind.io/2018/10/reprex-with-datapasta/





#*********************************
## End of Script | End of Document
#*********************************