read1 <- read.table('read1eestats.txt', header=TRUE)
read1_lo <- loess(read1$Mean_Q~read1$Pos)
read1_threshold <- which(predict(read1_lo) < 25)[1]

read2 <- read.table('read2eestats.txt', header=TRUE)
read2_lo <- loess(read2$Mean_Q~read2$Pos)
read2_threshold <- which(predict(read2_lo) < 25)[1]

plot(read1$Mean_Q, type='l', ylab="Mean_Pe", xlab="Pos #", col="red", main= "eestats.txt Curve")
lines(predict(read1_lo), col="blue")
lines(read2$Mean_Q, type='l', col="green")
lines(predict(read2_lo), col="orange")
abline(h = 25, col = "black")
abline(v = read1_threshold, col = "gray60")
abline(v = read2_threshold, col = "gray60")

legend(1, 15, legend=c("Read1", "Read2"),
       col=c("blue", "orange"), lty=1, cex=0.8)
legend(read1_threshold, 10, legend=c(read1_threshold),
       cex=0.5)
legend(read2_threshold, 10, legend=c(read2_threshold),
       cex=0.5)
