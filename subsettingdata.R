set.seed(3)
x<- data.frame("A" = sample(1:5), "B"= sample(6:10), "C"= sample(11:15))
x<- x[sample(1:5),];x$A[c(2,4)]="NA"
x
x[1:3,]
x[(x$A<=2&x$B>1),]
# which command 
  x[which(x$B>6),]
 # how do we sort the data
  sort(x$A,decreasing =F)
  # NA.last helps us to define the data such that unknown values are
  #the end of the data set
  sort(x$A,na.last = T)
  # sorting different variables
  sort(x$B,decreasing = F)
  # order is in which the result is ordered as against the given variable
  # in this case the data is ordered depending on the variable B
  x[order(x$B,x$A),]
  
  # we can also achieve the same result using the library plyr and 
  # arrange command
  
  library(dplyr)
  arrange(x,A)
  arrange(x,desc(A))
  #we can also add data to the data frame
  x$D <- sample(16:20)
  x
  # we can alos do this by column bind
 cbind(x,Y<-sample(21:25))
  x
  