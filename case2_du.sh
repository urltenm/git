#!/bin/bash

while true
do
	echo "Check the size of each folder"
	echo -e "\033[5;31m1. - break & exit\033[0m"
	echo -e "\033[1;32m2. - check size of one folder\033[0m"
	echo -e "\033[1;32m3. - check size of folder & subfolders\033[0m"
	read -p "Enter your choice: " choice
#	for file in $(ls -d */)

	if [ $choice -eq 1 ]
        then
                echo -e "\033[1;31mYour choice is EXIT\033[0m"
		break
        elif [ $choice -eq 2 ]
        then	
	echo ------------------------------------------------------
	read -p "Type folder path for checking folder size:" folder
	echo -e "\033[1;32mYour choice is checking size of folder\033[0m"
	for file in $(ls -d $folder)
	do
	        sudo du -hs $file
	done
	elif [ $choice -eq 3 ]
	then
	echo -----------------------------------------------------
	read -p "Type folder path for checking size of subfolders:" folder
	cd $folder
	echo -e "\033[1;32mYour choice is checking size of subfolders\033[0m"
	for file in $(ls -d */)
	do
		sudo du -hs $file
	done
	cd -
	echo -----------------------------------------------------
	fi
done
