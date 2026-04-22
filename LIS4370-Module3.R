Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")

ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

poll_data <- data.frame(Name, ABC_poll, CBS_poll)

print(poll_data)

summary(poll_data)

poll_data$Difference <- poll_data$CBS_poll - poll_data$ABC_poll
print(poll_data)

barplot(t(as.matrix(poll_data[,2:3])),
        beside = TRUE,
        col = c("blue", "red"),
        names.arg = poll_data$Name,
        legend.text = c("ABC", "CBS"),
        main = "Poll Comparison",
        ylab = "Poll Results")