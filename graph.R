
# Making a Plot of backstats.txt data
mydata <- read.table(pipe('tail -n $N bacstats.txt'))
plot(mydata$V2, type='l', main= "bacstats.txt Curve")

