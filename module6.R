#Create two matrices A and B
A=matrix(c(2,0,1,3), ncol=2)
B=matrix(c(5,2,4,-1), ncol=2)

#Add A and B
A + B
     [,1] [,2]
[1,]    7    5
[2,]    2    2

#Subtract A and B
A - B
     [,1] [,2]
[1,]   -3   -3
[2,]   -2    4

#Create a 4x4 matrix with a 4,1,2,3 in its diagonal
diag(c(4,1,2,3),4,4)
     [,1] [,2] [,3] [,4]
[1,]    4    0    0    0
[2,]    0    1    0    0
[3,]    0    0    2    0
[4,]    0    0    0    3

#Create a 5x5 matrix with 3's in its diagnonal, 1's in the first row, and 2's in the first column

#First, create a matrix with 1's in its first row
matrix(c(0,1,1,1,1,rep(0,20)),5,5,byrow=T)
     [,1] [,2] [,3] [,4] [,5]
[1,]    0    1    1    1    1
[2,]    0    0    0    0    0
[3,]    0    0    0    0    0
[4,]    0    0    0    0    0
[5,]    0    0    0    0    0

#Assign matrix to x
matrix(c(0,1,1,1,1,rep(0,20)),5,5,byrow=T) -> x

#Next, create a second matrix with 2's in its first column
matrix(c(0,2,2,2,2,rep(0,20)),5,5)
     [,1] [,2] [,3] [,4] [,5]
[1,]    0    0    0    0    0
[2,]    2    0    0    0    0
[3,]    2    0    0    0    0
[4,]    2    0    0    0    0
[5,]    2    0    0    0    0

#Assign matrix to y
matrix(c(0,2,2,2,2,rep(0,20)),5,5) -> y

#Finally, create a 5x5 matrix with 3's in its diagonal and add it to x and y
diag(x=3,5,5) + x + y
     [,1] [,2] [,3] [,4] [,5]
[1,]    3    1    1    1    1
[2,]    2    3    0    0    0
[3,]    2    0    3    0    0
[4,]    2    0    0    3    0
[5,]    2    0    0    0    3

#Done

