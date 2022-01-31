Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19)
grades <- cbind(Name, ABC, CBS)
grades
grades.df <- data.frame(Name, ABC, CBS)
grades.df
colMeans(grades.df[2:3])
