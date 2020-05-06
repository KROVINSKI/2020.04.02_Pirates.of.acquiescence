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


library(reprex)
library(dplyr) 

#*********************************
## Example Dataframe
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
## End of Script | End of Document
#*********************************