#-----------------------------------------------------------------------------------------------------------------
# Single Thread (X)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("single_thread_saliency_run.csv")

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
# Single Thread IPC Plott (X)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Single-Thread IPC (X-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L1 MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Single-Thread L1 MPKI (X-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L2 MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Single-Thread L2 MPKI (X-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread LLC MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Single-Thread LLC MPKI (X-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread Branch MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Single-Thread Branch MPKI (X-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread (X/4)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("single_thread_saliency_run_D4.csv")

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
# Single Thread IPC Plott (X/4)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Single-Thread IPC (X/4-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L1 MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Single-Thread L1 MPKI (X/4-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L2 MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Single-Thread L2 MPKI (X/4-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread LLC MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Single-Thread LLC MPKI (X/4-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread Branch MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Single-Thread Branch MPKI (X/4-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread (X/16)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("single_thread_saliency_run_D16.csv")

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
# Single Thread IPC Plott (X/16)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Single-Thread IPC (X/16-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L1 MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Single-Thread L1 MPKI (X/16-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L2 MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Single-Thread L2 MPKI (X/16-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread LLC MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Single-Thread LLC MPKI (X/16-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread Branch MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Single-Thread Branch MPKI (X/16-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread (X/64)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("single_thread_saliency_run_D64.csv")

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
# Single Thread IPC Plott (X/64)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Single-Thread IPC (X/64-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L1 MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Single-Thread L1 MPKI (X/64-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L2 MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Single-Thread L2 MPKI (X/64-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread LLC MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Single-Thread LLC MPKI (X/64-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread Branch MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Single-Thread Branch MPKI (X/64-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread (X/256)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("single_thread_saliency_run_D256.csv")

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
# Single Thread IPC Plott (X/256)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Single-Thread IPC (X/256-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L1 MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Single-Thread L1 MPKI (X/256-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread L2 MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Single-Thread L2 MPKI (X/256-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread LLC MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Single-Thread LLC MPKI (X/256-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Single Thread Branch MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Single-Thread Branch MPKI (X/256-Instructions)", xlab="Time", ylab="Branch MPKI")


#-----------------------------------------------------------------------------------------------------------------
# Two Thread (X)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("two_thread_saliency_run.csv")

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
# Two Thread IPC (X)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Two-Thread IPC (X-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L1 MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

L1MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L1MPKI ~ data$Timestamp, type="o", col="blue", main="Two-Thread L1 MPKI (X-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L2 MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Two-Thread L2 MPKI (X-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread LLC MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Two-Thread LLC MPKI (X-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread Branch MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Two-Thread Branch MPKI (X-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread (X/4)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("two_thread_saliency_run_D4.csv")

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
# Two Thread IPC (X/4)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Two-Thread IPC (X/4-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L1 MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

L1MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L1MPKI ~ data$Timestamp, type="o", col="blue", main="Two-Thread L1 MPKI (X/4-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L2 MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Two-Thread L2 MPKI (X/4-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread LLC MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Two-Thread LLC MPKI (X/4-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread Branch MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Two-Thread Branch MPKI (X/4-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread (X/16)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("two_thread_saliency_run_D16.csv")

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
# Two Thread IPC Plott (X/16)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Two-Thread IPC (X/16-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L1 MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Two-Thread L1 MPKI (X/16-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L2 MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Two-Thread L2 MPKI (X/16-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread LLC MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Two-Thread LLC MPKI (X/16-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread Branch MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Two-Thread Branch MPKI (X/16-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread (X/64)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("two_thread_saliency_run_D64.csv")

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
# Two Thread IPC Plott (X/64)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Two-Thread IPC (X/64-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L1 MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Two-Thread L1 MPKI (X/64-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L2 MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Two-Thread L2 MPKI (X/64-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread LLC MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Two-Thread LLC MPKI (X/64-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread Branch MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Two-Thread Branch MPKI (X/64-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread (X/256)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("two_thread_saliency_run_D256.csv")

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
# Two Thread IPC Plott (X/256)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Two-Thread IPC (X/256-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L1 MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Two-Thread L1 MPKI (X/256-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread L2 MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Two-Thread L2 MPKI (X/256-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread LLC MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Two-Thread LLC MPKI (X/256-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Two Thread Branch MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Two-Thread Branch MPKI (X/256-Instructions)", xlab="Time", ylab="Branch MPKI")


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

#-----------------------------------------------------------------------------------------------------------------
# Four Thread (X/4)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("four_thread_saliency_run_D4.csv")

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
# Four Thread IPC Plott (X/4)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Four-Thread IPC (X/4-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L1 MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Four-Thread L1 MPKI (X/4-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L2 MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Four-Thread L2 MPKI (X/4-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread LLC MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Four-Thread LLC MPKI (X/4-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread Branch MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Four-Thread Branch MPKI (X/4-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread (X/16)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("four_thread_saliency_run_D16.csv")

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
# Four Thread IPC Plott (X/16)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Four-Thread IPC (X/16-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L1 MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Four-Thread L1 MPKI (X/16-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L2 MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Four-Thread L2 MPKI (X/16-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread LLC MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Four-Thread LLC MPKI (X/16-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread Branch MPKI Plot (X/16)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Four-Thread Branch MPKI (X/16-Instructions)", xlab="Time", ylab="Branch MPKI")

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

#-----------------------------------------------------------------------------------------------------------------
# Four Thread (X/256)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("four_thread_saliency_run_D256.csv")

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
# Four Thread IPC Plott (X/256)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Four-Thread IPC (X/256-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L1 MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Four-Thread L1 MPKI (X/256-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread L2 MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Four-Thread L2 MPKI (X/256-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread LLC MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Four-Thread LLC MPKI (X/256-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Four Thread Branch MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Four-Thread Branch MPKI (X/256-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread (X)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("eight_thread_saliency_run.csv")

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
# Eight Thread IPC (X)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Eight-Thread IPC (X-Instructions)", xlab="Time", ylab="IPC")
#lines(data$Instructions ~ data$Timestamp, type="l", col="green")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread MPKL1 Plot (X)
#-----------------------------------------------------------------------------------------------------------------

L1MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L1MPKI ~ data$Timestamp, type="o", col="blue", main="Eight-Thread L1 MPKI (X-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L2 MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Eight-Thread L2 MPKI (X-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread LLC MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Four-Thread LLC MPKI (X-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread Branch MPKI Plot (X)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Eight-Thread Branch MPKI (X-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread (X/4)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("eight_thread_saliency_run_D4.csv")

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
# Eight Thread IPC Plott (X/4)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Eight-Thread IPC (X/4-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L1 MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Eight-Thread L1 MPKI (X/4-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L2 MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Eight-Thread L2 MPKI (X/4-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread LLC MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Eight-Thread LLC MPKI (X/4-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread Branch MPKI Plot (X/4)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Eight-Thread Branch MPKI (X/4-Instructions)", xlab="Time", ylab="Branch MPKI")

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

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread (X/64)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("eight_thread_saliency_run_D64.csv")

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
# Eight Thread IPC Plott (X/64)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Eight-Thread IPC (X/64-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L1 MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Eight-Thread L1 MPKI (X/64-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L2 MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Eight-Thread L2 MPKI (X/64-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread LLC MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Eight-Thread LLC MPKI (X/64-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread Branch MPKI Plot (X/64)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Eight-Thread Branch MPKI (X/64-Instructions)", xlab="Time", ylab="Branch MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread (X/256)
#-----------------------------------------------------------------------------------------------------------------

data <- read.csv("eight_thread_saliency_run_D256.csv")

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
# Eight Thread IPC Plott (X/256)
#-----------------------------------------------------------------------------------------------------------------

IPC = data$instructions/data$cpu.cycles
plot(IPC ~ data$Timestamp, type="o", col="red", main="Eight-Thread IPC (X/256-Instructions)", xlab="Time", ylab="IPC")
#par(new = TRUE) #Plots the next graph on the same graph

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L1 MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$L1.dcache.load.misses)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="blue", main="Eight-Thread L1 MPKI (X/256-Instructions)", xlab="Time", ylab="L1 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread L2 MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

L2MPKI = (data$l2_rqsts.miss)/(data$instructions/1000)
plot(L2MPKI ~ data$Timestamp, type="o", col="green", main="Eight-Thread L2 MPKI (X/256-Instructions)", xlab="Time", ylab="L2 MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread LLC MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

LLCMPKI = (data$LLC.load.misses)/(data$instructions/1000)
plot(LLCMPKI ~ data$Timestamp, type="o", col="purple", main="Eight-Thread LLC MPKI (X/256-Instructions)", xlab="Time", ylab="LLC MPKI")

#-----------------------------------------------------------------------------------------------------------------
# Eight Thread Branch MPKI Plot (X/256)
#-----------------------------------------------------------------------------------------------------------------

BranchMPKI= (data$branch.misses)/(data$instructions/1000)
plot(BranchMPKI ~ data$Timestamp, type="o", col="black", main="Eight-Thread Branch MPKI (X/256-Instructions)", xlab="Time", ylab="Branch MPKI")

