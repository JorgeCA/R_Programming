library(datasets)
data(iris)
data(mtcars)

#Question 1
round(mean(iris$Sepal.Length[which(iris$Species=="virginica")]),digits = 0)

#Question 2
apply(iris[, 1:4], 2, mean)

#Question 3
with(mtcars, tapply(mpg, cyl, mean))
sapply(split(mtcars$mpg, mtcars$cyl), mean)
tapply(mtcars$mpg, mtcars$cyl, mean)

#Question 4
round(abs(mean(mtcars$hp[which(mtcars$cyl==4)])-mean(mtcars$hp[which(mtcars$cyl==8)])), digits = 0)

#Question 5
debug(ls)