

Frequency <- c(.6, .3, .4, .4, .2, .6, .3, .4, .9, .2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
 
healthmat.df <-
  data.frame(Frequency, BP, First, Second, FinalDecision)

b1 <- boxplot(
  BP ~ First,
  data = healthmat.df,
  main = "Assessment by General Doctor",
  col = (c("purple", "yellow")),
  xlab = "First Assessment",
  #Recall 0=bad and 1=good
  ylab = "Blood Pressure"
)

b2 <- boxplot(
  BP ~ Second,
  data = healthmat.df,
  main = "Assessment by External Doctor",
  col = (c("purple", "yellow")),
  xlab = "Second Assessment",
  #Recall 0=bad and 1=good
  ylab = "Blood Pressure"
)
b3 <- boxplot(
  BP ~ FinalDecision,
  data = healthmat.df,
  main = "Emergency Unit's Final Decision",
  col = (c("purple", "yellow")),
  xlab = "Final Decision",
  #Recall 0=bad and 1=good
  ylab = "Blood Pressure"
)
h1 <- hist(
  heathmat.df$BP,
  main = "Blood Pressure of Patients By Frequency of Hospital Visits",
  col = c("red", "orange", "yellow", "blue", "purple"),
  xlab = "Blood Pressure",
  ylab = "Frequency of Hospital Visits"
)
