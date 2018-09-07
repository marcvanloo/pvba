# --------------------------------------------
# Authors: Andreas Alfons and Pieter Schoonees
#          Erasmus Universiteit Rotterdam
# --------------------------------------------

## install packages from CRAN: command line
install.packages("tidyverse")
?install.packages

## install local packages
# Windows
install.packages("euR_0.1.2.zip", repos = NULL)
# Mac
install.packages("euR_0.1.2.tgz", repos = NULL)
# Linux/Unix
install.packages("euR_0.1.2.tar.gz", repos = NULL)


## load installed packages
library("euR")
library("ggplot2")


## view R help files
# help for the help() function
?help
help("help")
# list all help topics within a package
help(package = "euR")
# run examples from a help file
example("mean")


## load data sets from packages
## example: prestige of Canadian occupations
# load data from a package that is already loaded
data("Prestige")
# from a package that is installed, but not loaded
data("Prestige", package = "euR")
# list all data sets of an installed package
data(package = "euR")


## view data sets
# type name of the data set
Prestige
# view first rows of data
head(Prestige)
# view last rows of data
tail(Prestige)
# summarize data
summary(Prestige)


## the usual suspect
# scatterplot matrix for data frame
plot(Prestige)


## scatterplot
ggplot(Prestige, aes(x = prestige, y = logincome)) + geom_point()


## histogram
ggplot(Prestige, aes(x = prestige)) + geom_histogram()
ggplot(Prestige, aes(x = prestige)) + geom_histogram(bins = 15)


## density plot
ggplot(Prestige, aes(x = prestige)) + geom_density()


## normal quantile-quantile plot
ggplot(Prestige, aes(sample = prestige)) + geom_qq()


## boxplot
# doesn't work: boxplot always requires to specify x-axis
ggplot(Prestige, aes(y = prestige)) + geom_boxplot()
# works: empty label on x-axis
ggplot(Prestige, aes(x = "", y = prestige)) + geom_boxplot()


## conditional boxplot
ggplot(Prestige, aes(x = type, y = prestige)) + geom_boxplot()
ggplot(Prestige, aes(x = type, y = prestige)) + geom_boxplot(notch = TRUE)


## barplot
ggplot(Prestige, aes(x = type)) + geom_bar()


## example: Eredivisie points of Feyenoord
data("Feyenoord")


## plot univariate time series
ggplot(Feyenoord, aes(x = Year, y = Points)) + geom_line()


## extensions to ggplot2: scatterplot matrix revisited
# standard R
plot(Prestige)
# package GGally
install.packages("GGally")
library("GGally")
ggpairs(Prestige)
