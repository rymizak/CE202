#-----------------------------------------------------------------------------------------------------------------
# Four Thread (X/64)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("four_thread_saliency_run_D64.csv")

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
# Four Thread IPC Plott (X/64)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Four-Thread IPC (X/64-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L1 MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Four-Thread L1 MPKI (X/64-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L2 MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Four-Thread L2 MPKI (X/64-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread LLC MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Four-Thread LLC MPKI (X/64-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread Branch MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Four-Thread Branch MPKI (X/64-Instructions)", xlab="Time", ylab="Branch MPKI")

