# R Data Visualization Basic Plot Using "IQGuessing" DataSet

plot(IQGuessing$Age,IQGuessing$GuessIQ, type="p", col=blues9)
title(main="IQ Guesses According to Age")



# R Data Visualization Using Lattice Package

install.packages("lattice")
library(lattice)
histogram(~GuessIQ, data=IQGuessing, main="IQ Guesses Based on Age")
IQGuessing$Age = factor(IQGuessing$Age)
histogram(~GuessIQ | Age, data=IQGuessing, main="IQ Guesses Based on Age")
histogram(~GuessIQ | Age, data=IQGuessing, main="IQ Guesses Based on Age", xlab= "Guessed IQ", ylab = "Age")

# R Visualization Using ggplot2 Package

install.packages("ggplot")
library(ggplot2)
ggplot(data=IQGuessing,mapping=aes(x=Age,y=GuessIQ)) +geom_point(size=3)+geom_line(color="Red")
ggplot(data=IQGuessing,mapping=aes(x=Age,y=TrueIQ)) +geom_point(size=3)+geom_line(color="Blue")
