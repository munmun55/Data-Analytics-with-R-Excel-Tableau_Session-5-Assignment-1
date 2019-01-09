# 1. How many vowels are there in the names of USA States?

USArrests          # data set 
USA_States <- rownames(USArrests) # names of states

USA_States <- paste(USA_States, collapse = "")  # converting the names to a string
USA_States <- tolower(strsplit(USA_States, "")[[1]]) # converting to lower case and spliting each letter
distribution <- as.data.frame(table(USA_States)) # converted to data frame 
names(distribution)
library(dplyr)
filter(distribution, USA_States %in% c("a","e","i","o","u")) # finding number of vowels in the names of USA States


# 2. Visualize the vowels distribution.

vowel_dist <- filter(distribution, USA_States %in% c("a","e","i","o","u"))
vowel_dist
barplot(vowel_dist$Freq, axes = TRUE, axisnames = TRUE, xlab = "Vowels", ylab = "frequency")

