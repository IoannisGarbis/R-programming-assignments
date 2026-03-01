#S3 Examples
person <- function(name, age) structure(list(name=name, age=age), class="person")
print.person <- function(x, ...) cat("Person:", x$name, "| Age:", x$age, "\n")
p <- person("Ana", 21); p

summary.person <- function(object, ...) c(mean_age = object$age)
summary(p)

#S4 Examples
library(methods)
setClass("Student", slots = c(name="character", gpa="numeric"))
s <- new("Student", name="Jay", gpa=3.7)

setGeneric("honors", function(x) standardGeneric("honors"))
setMethod("honors", "Student", function(x) x@gpa >= 3.5)
honors(s)