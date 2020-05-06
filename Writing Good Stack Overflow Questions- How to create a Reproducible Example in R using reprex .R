## Hello World
## Author: Pirate Captain Kate with trusty Gus 
## Title: Writing Good Stack Overflow Questions: How to create a Reproducible Example in R using reprex 
## Date: May 2020

#*********************************
##Libraries
#*********************************
install.packages("reprex")
## devtools::install_github("tidyverse/reprex")
reprex

#*********************************
## Example Dataframe
#*********************************

(y <- 1:4)
mean(y)
# Results =
# > (y <- 1:4)
# [1] 1 2 3 4
# > mean(y)
# [1] 2.5


reprex(y)




# 
# 
# 






#*********************************
## End of Script | End of Document
#*********************************