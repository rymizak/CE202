#-----------------------------------------------------------------------------------------------------------------
# Four Thread (X)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("four_thread_saliency_run.csv")

data$Timestamp <- as.character(data$Timestamp)
data$Timestamp[which(data$Timestamp=="<not counted>")] <- "0"
data$Timestamp <- as.numeric(data$Timestamp)

data$instructions <- as.character(data$instructions)
data$instructions[which(data$instructions=="<not counted>")] <- "0"
data$instructions <- as.numeric(data$instructions)

data$cpu.cycles <- as.character(data$cpu.cycles)
data$cpu.cycles[which(data$cpu.cycles=="<not counted>")] <- "0"
data$cpu.cycles <- as.numeric(data$cpu.cycles)

data$L1.dcache.load.misses <- as.character(data$L1.dcache.load.misses)
data$L1.dcache.load.misses[which(data$L1.dcache.load.misses=="<not counted>")] <- "0"
data$L1.dcache.load.misses <- as.numeric(data$L1.dcache.load.misses)

data$l2_rqsts.miss <- as.character(data$l2_rqsts.miss)
data$l2_rqsts.miss[which(data$l2_rqsts.miss=="<not counted>")] <- "0"
data$l2_rqsts.miss <- as.numeric(data$l2_rqsts.miss)

data$LLC.load.misses <- as.character(data$LLC.load.misses)
data$LLC.load.misses[which(data$LLC.load.misses=="<not counted>")] <- "0"
data$LLC.load.misses <- as.numeric(data$LLC.load.misses)

data$branch.misses <- as.character(data$branch.misses)
data$branch.misses[which(data$branch.misses=="<not counted>")] <- "0"
data$branch.misses <- as.numeric(data$branch.misses)

#-----------------------------------------------------------------------------------------------------------------
# Four Thread IPC (X)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Four-Thread IPC (X-Instructions)", xlab="Time", ylab="IPC")
#lines(data$Instructions ~ data$Timestamp, type="l", col="green")

#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L1 MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

L1MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L1MPKI ~ data$Timestamp, type="o", col="blue", main="Four-Thread L1 MPKI (X-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L2 MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Four-Thread L2 MPKI (X-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread LLC MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Four-Thread LLC MPKI (X-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread Branch MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Four-Thread Branch MPKI (X-Instructions)", xlab="Time", ylab="Branch MPKI")

