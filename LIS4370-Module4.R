Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

# Side-by-side plots
par(mfrow = c(1, 2))

# Boxplot of Blood Pressure
boxplot(bloodp,
        main = "Boxplot of Blood Pressure",
        ylab = "Blood Pressure")

# Histogram of Blood Pressure
hist(bloodp,
     main = "Histogram of Blood Pressure",
     xlab = "Blood Pressure")

