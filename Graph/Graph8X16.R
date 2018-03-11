#-----------------------------------------------------------------------------------------------------------------
# Eight Thread (X/16)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("eight_thread_saliency_run_D16.csv")

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
# Eight Thread IPC Plott (X/16)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Eight-Thread IPC (X/16-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L1 MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Eight-Thread L1 MPKI (X/16-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L2 MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Eight-Thread L2 MPKI (X/16-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread LLC MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Eight-Thread LLC MPKI (X/16-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread Branch MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Eight-Thread Branch MPKI (X/16-Instructions)", xlab="Time", ylab="Branch MPKI")

