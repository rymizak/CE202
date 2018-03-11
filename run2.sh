#!/bin/bash

#varname=$1
#varname2=$2

cd ./CE202

if [ $varname = 'latency' ]
then
	pwd
	python ex_fasa_saliency_map_images_latency.py
fi

if [ $varname = '1-Thread' ]
then
	if [ $varname2 = 'X' ]
	then
		echo "Running Single Thread (X)"
		bash parallelsaliency.sh 1 1	
	fi
	if [ $varname2 = 'X/4' ]
	then
		echo "Running Single Thread (X/4)"
		bash parallelsaliency.sh 1 2
			
	fi
	if [ $varname2 = 'X/16' ]
	then
		echo "Running Single Thread (X/16)"
		bash parallelsaliency.sh 1 3
			
	fi
	if [ $varname2 = 'X/64' ]
	then
		echo "Running Single Thread (X/64)"
		bash parallelsaliency.sh 1 4
			
	fi
	if [ $varname2 = 'X/256' ]
	then
		echo "Running Single Thread (X/256)"
		bash parallelsaliency.sh 1 5
			
	fi
fi

if [ $varname = '2-Thread' ]
then
	if [ $varname2 = 'X' ]
	then
		echo "Running Two Thread (X)"
		bash parallelsaliency.sh 2 1
		
	fi
	if [ $varname2 = 'X/4' ]
	then
		echo "Running Two Thread (X/4)"
		bash parallelsaliency.sh 2 2
			
	fi
	if [ $varname2 = 'X/16' ]
	then
		echo "Running Two Thread (X/16)"
		bash parallelsaliency.sh 2 3
			
	fi
	if [ $varname2 = 'X/64' ]
	then
		echo "Running Two Thread (X/64)"
		bash parallelsaliency.sh 2 4
			
	fi
	if [ $varname2 = 'X/256' ]
	then
		echo "Running Two Thread (X/256)"
		bash parallelsaliency.sh 2 5
		
	fi
fi

if [ $varname = '4-Thread' ]
then
	if [ $varname2 = 'X' ]
	then
		echo "Running Four Thread (X)"
		bash parallelsaliency.sh 4 1
			
	fi
	if [ $varname2 = 'X/4' ]
	then
		echo "Running Four Thread (X/4)"
		bash parallelsaliency.sh 4 2
			
	fi
	if [ $varname2 = 'X/16' ]
	then
		echo "Running Four Thread (X/16)"
		bash parallelsaliency.sh 4 3
			
	fi
	if [ $varname2 = 'X/64' ]
	then
		echo "Running Four Thread (X/64)"
		bash parallelsaliency.sh 4 4
			
	fi
	if [ $varname2 = 'X/256' ]
	then
		echo "Running Four Thread (X/256)"
		bash parallelsaliency.sh 4 5
			
	fi
fi

if [ $varname = '8-Thread' ]
then
	if [ $varname2 = 'X' ]
	then
		echo "Running Eight Thread"
		bash parallelsaliency.sh 8 1
		
	fi
	if [ $varname2 = 'X/4' ]
	then
		echo "Running Eight Thread (X/4)"
		bash parallelsaliency.sh 8 2
			
	fi
	if [ $varname2 = 'X/16' ]
	then
		echo "Running Eight Thread (X/16)"
		bash parallelsaliency.sh 8 3
			
	fi
	if [ $varname2 = 'X/64' ]
	then
		echo "Running Eight Thread (X/64)"
		bash parallelsaliency.sh 8 4
		
	fi
	if [ $varname2 = 'X/256' ]
	then
		echo "Running Eight Thread (X/256)"
		bash parallelsaliency.sh 8 5	
	fi
fi



