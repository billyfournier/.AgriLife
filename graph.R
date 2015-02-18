
# Making a Plot of backstats.txt data
# NOTE: The Environmental variables must be exported to work here
mydata <- read.table(pipe("tail -n $N $PROJECTDIR/bacstats.txt"))
plot(mydata$V2, type='l', ylab="Sequence Count Per",main= "bacstats.txt Curve")

