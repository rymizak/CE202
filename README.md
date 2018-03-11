# CE202_DeepGaze_Project
# Ryan Zakskorn


# "bash setup.sh: will install docker and all dependencies needed such as pull the github files needed

	bash setup.sh

# "bash run.sh" will take a #-Thread [1,2,4, or 8] and X/n [X, X/4, X/16, X/64, and X/256]

	bash run.sh [n-Thread] [X/n]

# Example bash run.sh commands

# ---------This command will need take 10 seconds to complete
	bash run.sh 8-Thread X/256

# ---------This command will need take ~50 minutes to complete
	bash run.sh 1-Thread X 

# NoteS:
	I know that we are suppose to run out program in docker, but for some reason the perf command doesn't run correctly when called
	outside of docker. I also tried to run perf from within docker and the output didn't look any better. I am assuming this is because
	my program opens and closes a GUI with photos and docker doesn't allow that and haven't found a work around to that issue. Also latency
	will no run at all since I made it that you have you click 'q' over and over again repetitively to close the GUI and took the times it 
	took to close the GUI. Since docker doesn't allow GUIs to pop up, latency couldn't be tested.

	Overall, I was able to run the benchmarks for both throughput and latency natively on my laptop and that worked out better than on docker.
