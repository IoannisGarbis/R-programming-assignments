data("iris", package = "datasets")
head(iris)

plot(iris$Sepal.Length, iris$Petal.Length,
     col  = as.numeric(iris$Species),
     pch  = 19,
     main = "Base R: Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length")

legend("topleft",
       legend = levels(iris$Species),
       col    = 1:3,
       pch    = 19)

hist(iris$Sepal.Width,
     main   = "Base R: Distribution of Sepal Width",
     xlab   = "Sepal Width",
     col    = "lightblue",
     border = "white")

library(lattice)

xyplot(Petal.Length ~ Sepal.Length | Species,
       data = iris,
       main = "Lattice: Petal Length vs Sepal Length by Species",
       xlab = "Sepal Length",
       ylab = "Petal Length",
       pch  = 19,
       col  = "darkblue")

bwplot(Sepal.Width ~ Species,
       data = iris,
       main = "Lattice: Sepal Width by Species",
       xlab = "Species",
       ylab = "Sepal Width",
       col  = "tan")

library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ggplot2: Petal Length vs Sepal Length with Trend Lines",
       x = "Sepal Length",
       y = "Petal Length")

ggplot(iris, aes(x = Sepal.Width, fill = Species)) +
  geom_histogram(binwidth = 0.2, color = "black") +
  facet_wrap(~ Species) +
  labs(title = "ggplot2: Sepal Width Distribution by Species",
       x = "Sepal Width",
       y = "Count")