#!/bin/bash

varname=$1
varname2=$2

echo $varname
echo $varname2

if [ $varname = '1' ]
then
	if [ $varname2 = '1' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_1.py"
	fi
	if [ $varname2 = '2' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_1_D4.py"
	fi
	if [ $varname2 = '3' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_1_D16.py"
	fi
	if [ $varname2 = '4' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_1_D64.py"
	fi
	if [ $varname2 = '5' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_1_D256.py"
	fi
fi
if [ $varname = '2' ]
then 
	if [ $varname2 = '1' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_2.py" "python ex_fasa_saliency_map_images_2.py"
	fi
	if [ $varname2 = '2' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_2_D4.py" "python ex_fasa_saliency_map_images_2_D4.py"
	fi
	if [ $varname2 = '3' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_2_D16.py" "python ex_fasa_saliency_map_images_2_D16.py"
	fi
	if [ $varname2 = '4' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_2_D64.py" "python ex_fasa_saliency_map_images_2_D64.py"
	fi
	if [ $varname2 = '5' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_2_D256.py" "python ex_fasa_saliency_map_images_2_D256.py"
	fi

fi
if [ $varname = '4' ]
then
	if [ $varname2 = '1' ]
	then
		parallel --no-notice :::  "python ex_fasa_saliency_map_images_4.py" "python ex_fasa_saliency_map_images_4.py" "python ex_fasa_saliency_map_images_4.py" "python ex_fasa_saliency_map_images_4.py"
	fi
	if [ $varname2 = '2' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_4_D4.py" "python ex_fasa_saliency_map_images_4_D4.py" "python ex_fasa_saliency_map_images_4_D4.py" "python ex_fasa_saliency_map_images_4_D4.py"
	fi
	if [ $varname2 = '3' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_4_D16.py" "python ex_fasa_saliency_map_images_4_D16.py" "python ex_fasa_saliency_map_images_4_D16.py" "python ex_fasa_saliency_map_images_4_D16.py"
	fi
	if [ $varname2 = '4' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_4_D64.py" "python ex_fasa_saliency_map_images_4_D64.py" "python ex_fasa_saliency_map_images_4_D64.py" "python ex_fasa_saliency_map_images_4_D64.py"
	fi
	if [ $varname2 = '5' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_4_D256.py" "python ex_fasa_saliency_map_images_4_D256.py" "python ex_fasa_saliency_map_images_4_D256.py" "python ex_fasa_saliency_map_images_4_D256.py"
	fi

fi
if [ $varname = '8' ]
then
	if [ $varname2 = '1' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_8.py" "python ex_fasa_saliency_map_images_8.py" "python ex_fasa_saliency_map_images_8.py" "python ex_fasa_saliency_map_images_8.py" "python ex_fasa_saliency_map_images_8.py" "python ex_fasa_saliency_map_images_8.py" "python ex_fasa_saliency_map_images_8.py" "python ex_fasa_saliency_map_images_8.py"
	fi
	if [ $varname2 = '2' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_8_D4.py" "python ex_fasa_saliency_map_images_8_D4.py" "python ex_fasa_saliency_map_images_8_D4.py" "python ex_fasa_saliency_map_images_8_D4.py" "python ex_fasa_saliency_map_images_8_D4.py" "python ex_fasa_saliency_map_images_8_D4.py" "python ex_fasa_saliency_map_images_8_D4.py" "python ex_fasa_saliency_map_images_8_D4.py"
	fi
	if [ $varname2 = '3' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_8_D16.py" "python ex_fasa_saliency_map_images_8_D16.py" "python ex_fasa_saliency_map_images_8_D16.py" "python ex_fasa_saliency_map_images_8_D16.py" "python ex_fasa_saliency_map_images_8_D16.py" "python ex_fasa_saliency_map_images_8_D16.py" "python ex_fasa_saliency_map_images_8_D16.py" "python ex_fasa_saliency_map_images_8_D16.py"
	fi
	if [ $varname2 = '4' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_8_D64.py" "python ex_fasa_saliency_map_images_8_D64.py" "python ex_fasa_saliency_map_images_8_D64.py" "python ex_fasa_saliency_map_images_8_D64.py" "python ex_fasa_saliency_map_images_8_D64.py" "python ex_fasa_saliency_map_images_8_D64.py" "python ex_fasa_saliency_map_images_8_D64.py" "python ex_fasa_saliency_map_images_8_D64.py"
	fi
	if [ $varname2 = '5' ]
	then
		parallel --no-notice ::: "python ex_fasa_saliency_map_images_8_D256.py" "python ex_fasa_saliency_map_images_8_D256.py" "python ex_fasa_saliency_map_images_8_D256.py" "python ex_fasa_saliency_map_images_8_D256.py" "python ex_fasa_saliency_map_images_8_D256.py" "python ex_fasa_saliency_map_images_8_D256.py" "python ex_fasa_saliency_map_images_8_D256.py" "python ex_fasa_saliency_map_images_8_D256.py"
	fi

fi
