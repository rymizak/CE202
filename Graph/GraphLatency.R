#-----------------------------------------------------------------------------------------------------------------
# Eight Thread (X/256)
#-----------------------------------------------------------------------------------------------------------------

startData <- read.csv("latency_start.csv")
endData <- read.csv("latency_end.csv")
timeData <- read.csv("latency_time.csv")
data <- read.csv("latency_perf1.csv")
loopData <- read.csv("latency_loop.csv")


#-----------------------------------------------------------------------------------------------------------------
# Eight Thread IPC Plott (X/256)
#-----------------------------------------------------------------------------------------------------------------

plot(startData$start ~ loopData$loop, type="o", col="red", main="Start Time", xlab="Time", ylab="startTime")
#par(new = TRUE) #Plots the next graph on the same graph
plot(endData$end ~ loopData$loop, type="o", col="red", main="End Time", xlab="Time", ylab="endTime")
plot(timeData$time ~ loopData$loop, type="o", col="red", main="Latency", xlab="Time", ylab="Time from clicking 'q' to close")

meanTime = rep(mean(timeData$time), length(loopData$loop))

plot(meanTime ~ loopData$loop, type="o", col="red", main="Latency Average", xlab="Time", ylab="Time from clicking 'q' to close average")
