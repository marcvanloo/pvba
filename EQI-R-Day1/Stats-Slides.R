# --------------------------------------------
# Authors: Andreas Alfons and Pieter Schoonees
#          Erasmus Universiteit Rotterdam
# --------------------------------------------


## software requirements
library("euR")



# ----------------
# Basic statistics
# ----------------


## combine values into a vector
c(2, 4, 5, 21, 65)
c("foo", "bar")


## sequences of values
3:7
seq(0, 1, by = 0.2)


## assigning values
numbers <- c(2, 4, 5, 21, 65)
numbers
text <- c("foo", "bar")
text



# -----------------
# Data manipulation
# -----------------


data("PhDPublications")


## data dimensions
dim(PhDPublications)
nrow(PhDPublications)
ncol(PhDPublications)


## names
colnames(PhDPublications)
rownames(PhDPublications)


## extracting variables with $
articles <- PhDPublications$articles
mentor <- PhDPublications$mentor


## length of a vector
length(articles)


## categorizing a numeric vector
prestige <- PhDPublications$prestige
b <- c(0, 2.5, 3.5, 5)
prcat <- cut(prestige, breaks = b)
table(PhDPublications$prcat)


## categorization revisited
b <- c(0, 2.5, 3.5, 5)
l <- c("low", "average", "high")
prcat <- cut(prestige, breaks = b, labels = l)
table(prcat)



# ------------------
# Basic data analysis
# ------------------


## minimum and maximum
# separately
min(articles)
max(articles)
# together
range(articles)


## quantiles
quantile(articles)
quantile(articles, probs = c(0.25, 0.5, 0.75))


## mean and median
mean(articles)
median(articles)


## dispersion
sd(articles)
var(articles)


# covariance
cov(articles, mentor)
# correlation
cor(articles, mentor)


## contingency tables for qualitative variables
married <- PhDPublications$married
kids <- PhDPublications$kids
# one-way contingency table
table(kids)
# two-way contingency table
table(married, kids)


## accessing variables with with()
with(PhDPublications, cor(articles, mentor))
with(PhDPublications, table(married, kids))
