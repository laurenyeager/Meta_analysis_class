# Set up my working directory
setwd("C:/Users/Lauren Yeager/Documents/Teaching/Meta-analysis/R_stuff/")

#Try out basic functions
sqrt(4)
sqrt(weight_kg)

round(3.14598, digits = 2)
args(round)
?round

length_cm <- c(10, 15, 5, 18, 20)
animals <- c("rat", "dog", "cat", "fish")


length(animals)
class(animals)
class(length_cm)
str(animals)


animals <- c(animals, "hippo")
animals

str(length_cm)
length_cm[1]
length_cm[c(2,3,5)]
length_cm[1:3]


animals[c(TRUE, FALSE, TRUE, TRUE, FALSE)]

length_cm > 10

big_length <- length_cm[length_cm > 10]

#logical with and
length_cm >10 & length_cm < 20
new_lengths <- length_cm[length_cm >10 & length_cm < 20]

#Logicals with or
length_cm >30 | length_cm < 20

length_cm == 10
length_cm != 10
length_cm >= 10
lenth_cm <= 10

#sum your logicals to find out how 
#many elements meet your condition
sum(animals == "cat")

#subset a character vector by a logical
best_animals <- animals[animals == "cat"]

which(animals == "cat")
which(length_cm > 10)
big_length2 <- length_cm[which(length_cm > 10)]


animals %in% c("cat", "dog", "fish")
pets <- c("cat", "dog", "fish")
animals %in% pets


heights <- c(2,4,4,NA,6)
mean(heights, na.rm = TRUE)

!is.na(heights)
new_heights <- heights[!is.na(heights)]

new_log <- c(TRUE, FALSE)
!new_log

#Load in data into R
download.file("http://ndownloader.figshare.com/files/2292169",
              destfile = "combinded.csv")

surveys <- read.csv("combinded.csv")
str(surveys)
dim(surveys)
nrow(surveys)
ncol(surveys)
head(surveys)
tail(surveys)
colnames(surveys)
rownames(surveys)
