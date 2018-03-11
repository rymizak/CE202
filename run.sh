#!/bin/bash

# Ryan Zakskorn
# CE 202 Project

# Command to run the project:
#
#	'bash run.sh #-Thread X/#'
#
#	Variables to choose from:
#		
#		latency (Will plot latency) (Doesn't work in docker since GUI can't pop up in docker)
#			**spam 'q' while running to close GUI each time for benchmark. (Closes 10 times)
#		
#		#-Thread (How many Threads)	X/# (Total Instructions/#)
#		1-Thread			X
#		2-Thread			X/4
#		4-Thread			X/16
#		8-Thread			X/64
#						X/256
#
# 	Example:
#		bash run.sh 8-Thread X/256  	**10 second runtime
#		bash run.sh 1-Thread X		**~50 minute runtime
#		bash run.sh 4-Thread X/16
#		bash run.sh latency 		** Doesn't work in docker
#
#	Since I used for-loops on the code in order to get around 1-10T instructions, that means that 8-threads at X/256 is running
#	the program in 1-loop. That also means that 1-thread at X will need 2048-loops at the minumu which is around 23T instructions.
#	Sorry about that but I couldn't find a work around since this program is very memory intensive.
#
#	Also, running this program in docker doesn't plot the correct graphs. For some reason when running perf outside of docker causes
#	a lot of missing counters and therefore no points get plotted in the actual runtime of the application. I will also provide a file
#	setup for running the program outside of docker if you would like to see the program actually run.




sudo sh -c 'echo -1 >/proc/sys/kernel/perf_event_paranoid'
sudo sh -c 'echo 0 >/proc/sys/kernel/nmi_watchdog'

cd ./CE202

varname=$1
varname2=$2

if [ $varname = 'latency' ]
then
	echo "Running First Run of Latency"
	rm latency_start.csv
	rm latency_end.csv
	rm latency_perf1.csv
	rm latency_time.csv
	rm latency_loop.csv
	perf stat -I 100 -e instructions,cpu-cycles -x, -o latency_perf.csv docker run -e varname=latency run
	interval-normalize.py latency_perf.csv > latency_perf1.csv	
	Rscript ./Graph/GraphLatency.R
	rm latency_perf.csv
	evince Rplots.pdf
	#perf stat -I 100 -e instructions,cpu-cycles -x, -o latency_2.csv bash ex_fasa_saliency_map_images_latency.py
fi

if [ $varname = '1-Thread' ]
then
	if [ $varname2 = 'X' ]
	then
		echo "Running Single Thread (X)"
		perf stat -I 10000 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o single_thread_saliency.csv docker run -e varname=1-Thread -e varname2=X run #bash parallelsaliency.sh 1 1
		interval-normalize.py single_thread_saliency.csv > single_thread_saliency_run.csv
		rm single_thread_saliency.csv
		Rscript ./Graph/Graph1X.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/4' ]
	then
		echo "Running Single Thread (X/4)"
		perf stat -I 5000 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o single_thread_saliency.csv docker run -e varname=1-Thread -e varname2=X/4 run #bash parallelsaliency.sh 1 2
		interval-normalize.py single_thread_saliency.csv > single_thread_saliency_run_D4.csv
		rm single_thread_saliency.csv
		Rscript ./Graph/Graph1X4.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/16' ]
	then
		echo "Running Single Thread (X/16)"
		perf stat -I 1250 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o single_thread_saliency.csv docker run -e varname=1-Thread -e varname2=X/16 run #bash parallelsaliency.sh 1 3
		interval-normalize.py single_thread_saliency.csv > single_thread_saliency_run_D16.csv
		rm single_thread_saliency.csv
		Rscript ./Graph/Graph1X16.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/64' ]
	then
		echo "Running Single Thread (X/64)"
		perf stat -I 312 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o single_thread_saliency.csv docker run -e varname=1-Thread -e varname2=X/64 run #bash parallelsaliency.sh 1 4
		interval-normalize.py single_thread_saliency.csv > single_thread_saliency_run_D64.csv
		rm single_thread_saliency.csv
		Rscript ./Graph/Graph1X64.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/256' ]
	then
		echo "Running Single Thread (X/256)"
		perf stat -I 78 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o single_thread_saliency.csv docker run -e varname=1-Thread -e varname2=X/256 run #bash parallelsaliency.sh 1 5
		interval-normalize.py single_thread_saliency.csv > single_thread_saliency_run_D256.csv
		rm single_thread_saliency.csv
		Rscript ./Graph/Graph1X256.R
		evince Rplots.pdf	
	fi
fi

if [ $varname = '2-Thread' ]
then
	if [ $varname2 = 'X' ]
	then
		echo "Running Two Thread (X)"
		perf stat -I 5000 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o two_thread_saliency.csv docker run -e varname=2-Thread -e varname2=X run #bash parallelsaliency.sh 2 1
		interval-normalize.py two_thread_saliency.csv > two_thread_saliency_run.csv
		rm two_thread_saliency.csv
		Rscript ./Graph/Graph2X.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/4' ]
	then
		echo "Running Two Thread (X/4)"
		perf stat -I 2500 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o two_thread_saliency.csv docker run -e varname=2-Thread -e varname2=X/4 run #bash parallelsaliency.sh 2 2
		interval-normalize.py two_thread_saliency.csv > two_thread_saliency_run_D4.csv
		rm two_thread_saliency.csv
		Rscript ./Graph/Graph2X4.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/16' ]
	then
		echo "Running Two Thread (X/16)"
		perf stat -I 625 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o two_thread_saliency.csv docker run -e varname=2-Thread -e varname2=X/16 run #bash parallelsaliency.sh 2 3
		interval-normalize.py two_thread_saliency.csv > two_thread_saliency_run_D16.csv
		rm two_thread_saliency.csv
		Rscript ./Graph/Graph2X16.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/64' ]
	then
		echo "Running Two Thread (X/64)"
		perf stat -I 156 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o two_thread_saliency.csv docker run -e varname=2-Thread -e varname2=X/64 run #bash parallelsaliency.sh 2 4
		interval-normalize.py two_thread_saliency.csv > two_thread_saliency_run_D64.csv
		rm two_thread_saliency.csv
		Rscript ./Graph/Graph2X64.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/256' ]
	then
		echo "Running Two Thread (X/256)"
		perf stat -I 39 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o two_thread_saliency.csv docker run -e varname=2-Thread -e varname2=X/256 run #bash parallelsaliency.sh 2 5
		interval-normalize.py two_thread_saliency.csv > two_thread_saliency_run_D256.csv
		rm two_thread_saliency.csv
		Rscript ./Graph/Graph2X256.R
		evince Rplots.pdf	
	fi
fi

if [ $varname = '4-Thread' ]
then
	if [ $varname2 = 'X' ]
	then
		echo "Running Four Thread (X)"
		perf stat -I 2500 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o four_thread_saliency.csv docker run -e varname=4-Thread -e varname2=X run #bash parallelsaliency.sh 4 1
		interval-normalize.py four_thread_saliency.csv > four_thread_saliency_run.csv
		rm four_thread_saliency.csv
		Rscript ./Graph/Graph4X.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/4' ]
	then
		echo "Running Four Thread (X/4)"
		perf stat -I 1250 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o four_thread_saliency.csv docker run -e varname=4-Thread -e varname2=X/4 run #bash parallelsaliency.sh 4 2
		interval-normalize.py four_thread_saliency.csv > four_thread_saliency_run_D4.csv
		rm four_thread_saliency.csv
		Rscript ./Graph/Graph4X4.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/16' ]
	then
		echo "Running Four Thread (X/16)"
		perf stat -I 312 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o four_thread_saliency.csv docker run -e varname=4-Thread -e varname2=X/16 run #bash parallelsaliency.sh 4 3
		interval-normalize.py four_thread_saliency.csv > four_thread_saliency_run_D16.csv
		rm four_thread_saliency.csv
		Rscript ./Graph/Graph4X16.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/64' ]
	then
		echo "Running Four Thread (X/64)"
		perf stat -I 78 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o four_thread_saliency.csv docker run -e varname=4-Thread -e varname2=X/64 run #bash parallelsaliency.sh 4 4
		interval-normalize.py four_thread_saliency.csv > four_thread_saliency_run_D64.csv
		rm four_thread_saliency.csv
		Rscript ./Graph/Graph4X64.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/256' ]
	then
		echo "Running Four Thread (X/256)"
		perf stat -I 30 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o four_thread_saliency.csv docker run -e varname=4-Thread -e varname2=X/256 run #bash parallelsaliency.sh 4 5
		interval-normalize.py four_thread_saliency.csv > four_thread_saliency_run_D256.csv
		rm four_thread_saliency.csv
		Rscript ./Graph/Graph4X256.R
		evince Rplots.pdf	
	fi
fi

if [ $varname = '8-Thread' ]
then
	if [ $varname2 = 'X' ]
	then
		echo "Running Eight Thread"
		perf stat -I 1250 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o eight_thread_saliency.csv docker run -e varname=8-Thread -e varname2=X run  #bash parallelsaliency.sh 8 1
		interval-normalize.py eight_thread_saliency.csv > eight_thread_saliency_run.csv
		rm eight_thread_saliency.csv
		Rscript ./Graph/Graph8X.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/4' ]
	then
		echo "Running Eight Thread (X/4)"
		perf stat -I 620 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o eight_thread_saliency.csv docker run -e varname=8-Thread -e varname2=X/4 run #bash parallelsaliency.sh 8 2
		interval-normalize.py eight_thread_saliency.csv > eight_thread_saliency_run_D4.csv
		rm eight_thread_saliency.csv
		Rscript ./Graph/Graph8X4.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/16' ]
	then
		echo "Running Eight Thread (X/16)"
		perf stat -I 312 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o eight_thread_saliency.csv docker run -e varname=8-Thread -e varname2=X/16 run #bash parallelsaliency.sh 8 3
		interval-normalize.py eight_thread_saliency.csv > eight_thread_saliency_run_D16.csv
		rm eight_thread_saliency.csv
		Rscript ./Graph/Graph8X16.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/64' ]
	then
		echo "Running Eight Thread (X/64)"
		perf stat -I 78 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o eight_thread_saliency.csv docker run -e varname=8-Thread -e varname2=X/64 run #bash parallelsaliency.sh 8 4
		interval-normalize.py eight_thread_saliency.csv > eight_thread_saliency_run_D64.csv
		rm eight_thread_saliency.csv
		Rscript ./Graph/Graph8X64.R
		evince Rplots.pdf	
	fi
	if [ $varname2 = 'X/256' ]
	then
		echo "Running Eight Thread (X/256)"
		perf stat -I 12 -e instructions,cpu-cycles,branch-misses,L1-dcache-load-misses,l2_rqsts.miss,LLC-load-misses -x, -o eight_thread_saliency.csv docker run -e varname=8-Thread -e varname2=X/256 run
		interval-normalize.py eight_thread_saliency.csv > eight_thread_saliency_run_D256.csv
		rm eight_thread_saliency.csv
		Rscript ./Graph/Graph8X256.R
		evince Rplots.pdf	
	fi
fi

cd ..


